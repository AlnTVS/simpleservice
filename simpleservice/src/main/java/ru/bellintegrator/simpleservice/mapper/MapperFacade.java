package ru.bellintegrator.simpleservice.mapper;

import java.util.List;

/**
 * Фасад для преобразования между можелями БД и фронта
 */
public interface MapperFacade {

    /**
     * Преобразование sourceObject в экземпляр класса destinationClass
     *
     * @param sourceObject     исходный объект
     * @param destinationClass класс, в который надо преобразовать объект
     * @param <S>              тип исходного объекта
     * @param <D>              тип объекта, к который надо преобразовать исходный объект
     * @return экземпляр класса D с данными из sourceObject
     */
    <S, D> D map(S sourceObject, Class<D> destinationClass);

    /**
     * Запись занных из sourceObject в destinationObject
     *
     * @param sourceObject
     * @param destinationObject
     * @param <S>
     * @param <D>
     */
    <S, D> void map(S sourceObject, D destinationObject);

    /**
     * Преобразование коллекции оъектов
     *
     * @param source
     * @param destinationClass
     * @param <S>
     * @param <D>
     * @return
     */
    <S, D> List<D> mapAsList(Iterable<S> source, Class<D> destinationClass);

    /**
     * Преобразование from/to UserEntity to/from UserView
     *
     * @param source
     * @param destinationClass
     * @param <S>
     * @param <D>
     * @return
     */
    public <S, D> List<D> mapUserEntityToUserViewAsList(Iterable<S> source, Class<D> destinationClass);

    public <S, D> D mapUserEntityToUserView(S sourceObject, Class<D> destinationClass);

    public <S, D> List<D> mapUserEntityToUserExtendedViewAsList(Iterable<S> source, Class<D> destinationClass);

    public <S, D> D mapUserEntityToUserExtendedView(S sourceObject, Class<D> destinationClass);

    public <S, D> D mapOrganizationEntityToOrganizationView(S sourceObject, Class<D> destinationClass);

}
