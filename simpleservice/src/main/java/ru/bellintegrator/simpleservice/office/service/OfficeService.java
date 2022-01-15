package ru.bellintegrator.simpleservice.office.service;

import ru.bellintegrator.simpleservice.office.view.FullOfficeView;
import ru.bellintegrator.simpleservice.office.view.OfficeView;
import ru.bellintegrator.simpleservice.organization.view.FullOrganizationView;
import ru.bellintegrator.simpleservice.organization.view.OrganizationView;

import java.util.List;

public interface OfficeService {
    /**
     * Получить список всех офисов
     *
     * @return {@List<OfficeView>}
     */
    List<OfficeView> offices();

    /**
     * Получить список офисов по фильтру
     *
     * @param officeView
     *
     * @return {@List<OfficeView>}
     */
    List<OfficeView> offices(OfficeView officeView);

    /**
     * Получить офис по id
     *
     * @param id
     *
     * @return {FullOfficeView}
     */
    FullOfficeView officeById(Long id);

    /**
     * Обновить информацию офисе по fullOfficeView
     *
     * @param fullOfficeView
     *
     */
    void updateOfficeByFullView(FullOfficeView fullOfficeView);
}