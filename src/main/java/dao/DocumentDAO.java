package dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import models.Document;

import java.util.List;

public class DocumentDAO {
    private EntityManager em;
    EntityTransaction tx;

    public DocumentDAO() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("lastExam");
        em = emf.createEntityManager();
        tx = em.getTransaction();
    }
    public List<Document> retrieveDocument(){
        return em.createQuery("SELECT d FROM Document d", Document.class).getResultList();
    }

}
