package com.cesi.dao.interfaces;

import com.cesi.dao.exceptions.DAOException;

public interface EntityInterfaceDAO {
// use this.create dans people par exemple et
// faire un this dans create pour récupérer le nouveau people
    int insert() throws DAOException;

    int update() throws DAOException;

    int delete() throws DAOException;

    int readAll() throws DAOException;
}