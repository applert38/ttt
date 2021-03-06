// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.se.test.domain;

import com.se.test.domain.Cus;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Cus_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Cus.entityManager;
    
    public static final List<String> Cus.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Cus.entityManager() {
        EntityManager em = new Cus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Cus.countCuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Cus o", Long.class).getSingleResult();
    }
    
    public static List<Cus> Cus.findAllCuses() {
        return entityManager().createQuery("SELECT o FROM Cus o", Cus.class).getResultList();
    }
    
    public static List<Cus> Cus.findAllCuses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Cus o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Cus.class).getResultList();
    }
    
    public static Cus Cus.findCus(Long id) {
        if (id == null) return null;
        return entityManager().find(Cus.class, id);
    }
    
    public static List<Cus> Cus.findCusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Cus o", Cus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Cus> Cus.findCusEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Cus o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Cus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Cus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Cus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Cus attached = Cus.findCus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Cus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Cus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Cus Cus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Cus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
