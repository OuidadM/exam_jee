package dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import models.Borrow;
import models.Document;

import java.util.List;

public class BorrowDAO {
    private EntityManager em;
    EntityTransaction tx;

    public BorrowDAO() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("lastExam");
        em = emf.createEntityManager();
        tx = em.getTransaction();
    }
    public List<Borrow> retrieveEmpruntsEnCours(){
        return em.createQuery("SELECT b FROM Borrow b WHERE b.dateRetour IS NULL OR b.dateRetour > CURRENT_DATE", Borrow.class).getResultList();
    }
}
