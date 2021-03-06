package ru.bellintegrator.simpleservice.organization.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import ru.bellintegrator.simpleservice.address.entity.AddressEntity;
import ru.bellintegrator.simpleservice.address.repository.AddressRepository;
import ru.bellintegrator.simpleservice.address.repository.specification.AddressSpecification;
import ru.bellintegrator.simpleservice.organization.entity.OrganizationEntity;
import ru.bellintegrator.simpleservice.mapper.MapperFacade;
import ru.bellintegrator.simpleservice.common.exception.NotFountRequiredParametersException;
import ru.bellintegrator.simpleservice.common.exception.NotUniqueDataException;
import ru.bellintegrator.simpleservice.organization.exceptions.OrganizationNotFoundException;
import ru.bellintegrator.simpleservice.organization.repositories.OrganizationRepository;
import ru.bellintegrator.simpleservice.organization.util.OrganizationFilter;
import ru.bellintegrator.simpleservice.organization.view.OrganizationForHTTPMethodsExtendedView;
import ru.bellintegrator.simpleservice.organization.view.OrganizationForHTTPMethodListView;

import java.util.List;

/**
 * Реализует интерфейс {@link OrganizationService}
 *
 * @author Alntvs alntvs@yandex.ru https://github.com/AlnTVS
 * @version 1.0
 * @since 21.01.2021
 */
@Service
public class OrganizationServiceImpl implements OrganizationService{

    /**
     * Используется для доступа сервиса к данным об организациях находящихся в БД
     */
    private OrganizationRepository organizationRepository;
    /**
     * Используется для доступа сервиса к данным по адресам находящихся в БД
     */
    private AddressRepository addressRepository;
    /**
     * Используется для маппинга между {@link OrganizationEntity} и {@link OrganizationForHTTPMethodListView} или/и {@link OrganizationForHTTPMethodsExtendedView}
     */
    private MapperFacade mapperFacade;

    /**
     * Создает экземпляр этого класса.
     * Используется аннотация <i>@Autowired</i>, для автозаполнения инъекцией.
     *
     * @param organizationRepository репозиторий организаций для доступа сервиса к данным по организациям в БД
     * @param addressRepository репозиторий адресов для доступа сервиса к данным по адресам в БД.
     * @param mapperFacade используется для маппинга между <code>View</code> и <code>Entity</code>
     */
    @Autowired
    public OrganizationServiceImpl(OrganizationRepository organizationRepository, AddressRepository addressRepository, MapperFacade mapperFacade) {
        this.organizationRepository = organizationRepository;
        this.addressRepository = addressRepository;
        this.mapperFacade = mapperFacade;
    }

    @Override
    public List<OrganizationForHTTPMethodListView> organizations() {
        List<OrganizationEntity> organizationEntityList = organizationRepository.findAll();
        return mapperFacade.mapAsList(organizationEntityList, OrganizationForHTTPMethodListView.class);
    }

    @Override
    public List<OrganizationForHTTPMethodListView> organizations(OrganizationForHTTPMethodListView organization) {
        if(organization.name == null) {
            throw new NotFountRequiredParametersException("Parameter \"name\" required, but it is null");
        }
        OrganizationFilter organizationFilter = new OrganizationFilter(organization);
        List<OrganizationEntity> organizationEntityList = organizationRepository.findAll(organizationFilter.getSpec());
        return mapperFacade.mapAsList(organizationEntityList, OrganizationForHTTPMethodListView.class);
    }

    @Override
    public OrganizationForHTTPMethodsExtendedView organisationById(Long id) {
        OrganizationEntity organizationEntity = organizationRepository.findById(id).orElseThrow(() -> new OrganizationNotFoundException("Can't found organization with id = " + id));
        OrganizationForHTTPMethodsExtendedView organizationForHTTPMethodsExtendedView = mapperFacade.mapOrganizationEntityToOrganizationView(organizationEntity, OrganizationForHTTPMethodsExtendedView.class);
        return organizationForHTTPMethodsExtendedView;
    }

    @Override
    public void updateOrganization(OrganizationForHTTPMethodsExtendedView organizationForHTTPMethodsExtendedView) {
        if(organizationForHTTPMethodsExtendedView.id == null || organizationForHTTPMethodsExtendedView.name == null ||
            organizationForHTTPMethodsExtendedView.fullName == null || organizationForHTTPMethodsExtendedView.inn == null ||
            organizationForHTTPMethodsExtendedView.kpp == null || organizationForHTTPMethodsExtendedView.address == null) {
            throw new NotFountRequiredParametersException("Parameters \"id\", \"name\", \"fullName\", \"inn\", \"kpp\", \"address\" required, but one or more is null");
        }
        Long id = Long.valueOf(organizationForHTTPMethodsExtendedView.id);
        organizationRepository.findById(id).orElseThrow(() -> new OrganizationNotFoundException("Can't found organization with id = " + id ));
        OrganizationEntity updatedOrganization = mapperFacade.mapOrganizationEntityToOrganizationView(organizationForHTTPMethodsExtendedView,OrganizationEntity.class);
        Specification<AddressEntity> addressEntitySpecification = Specification.where(AddressSpecification.addressIs(organizationForHTTPMethodsExtendedView.address));
        updatedOrganization.setAddress(addressRepository.findOne(addressEntitySpecification).orElse(new AddressEntity(null, organizationForHTTPMethodsExtendedView.address)));
        try {
            organizationRepository.save(updatedOrganization);
        } catch (DataIntegrityViolationException e) {
            throw new NotUniqueDataException("Some data not unique. " + e.getMessage());
        }
    }

    @Override
    public void addNewOrganization(OrganizationForHTTPMethodsExtendedView organizationForHTTPMethodsExtendedView) {
        if( organizationForHTTPMethodsExtendedView.name == null
                || organizationForHTTPMethodsExtendedView.fullName == null
                || organizationForHTTPMethodsExtendedView.inn == null
                || organizationForHTTPMethodsExtendedView.kpp == null
                || organizationForHTTPMethodsExtendedView.address == null) {
            throw new NotFountRequiredParametersException("Parameters \"name\", \"fullName\", \"inn\", \"kpp\", \"address\" required, but one or more is null");
        }
        OrganizationEntity newOrganizationEntity = mapperFacade.mapOrganizationEntityToOrganizationView(organizationForHTTPMethodsExtendedView,OrganizationEntity.class);
        Specification<AddressEntity> addressEntitySpecification = Specification.where(AddressSpecification.addressIs(organizationForHTTPMethodsExtendedView.address));
        AddressEntity addressEntity = addressRepository.findOne(addressEntitySpecification).orElse(new AddressEntity(null, organizationForHTTPMethodsExtendedView.address));
        addressRepository.save(addressEntity);
        newOrganizationEntity.setAddress(addressEntity);
        try {
            organizationRepository.save(newOrganizationEntity);
        } catch (DataIntegrityViolationException e) {
            throw new NotUniqueDataException("Some data not unique. " + e.getMessage());
        }
    }
}
