package com.minidwep.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class ClassesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ClassesExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andClassesIdIsNull() {
            addCriterion("classes_id is null");
            return (Criteria) this;
        }

        public Criteria andClassesIdIsNotNull() {
            addCriterion("classes_id is not null");
            return (Criteria) this;
        }

        public Criteria andClassesIdEqualTo(Integer value) {
            addCriterion("classes_id =", value, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdNotEqualTo(Integer value) {
            addCriterion("classes_id <>", value, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdGreaterThan(Integer value) {
            addCriterion("classes_id >", value, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("classes_id >=", value, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdLessThan(Integer value) {
            addCriterion("classes_id <", value, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdLessThanOrEqualTo(Integer value) {
            addCriterion("classes_id <=", value, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdIn(List<Integer> values) {
            addCriterion("classes_id in", values, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdNotIn(List<Integer> values) {
            addCriterion("classes_id not in", values, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdBetween(Integer value1, Integer value2) {
            addCriterion("classes_id between", value1, value2, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesIdNotBetween(Integer value1, Integer value2) {
            addCriterion("classes_id not between", value1, value2, "classesId");
            return (Criteria) this;
        }

        public Criteria andClassesNameIsNull() {
            addCriterion("classes_name is null");
            return (Criteria) this;
        }

        public Criteria andClassesNameIsNotNull() {
            addCriterion("classes_name is not null");
            return (Criteria) this;
        }

        public Criteria andClassesNameEqualTo(String value) {
            addCriterion("classes_name =", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameNotEqualTo(String value) {
            addCriterion("classes_name <>", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameGreaterThan(String value) {
            addCriterion("classes_name >", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameGreaterThanOrEqualTo(String value) {
            addCriterion("classes_name >=", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameLessThan(String value) {
            addCriterion("classes_name <", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameLessThanOrEqualTo(String value) {
            addCriterion("classes_name <=", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameLike(String value) {
            addCriterion("classes_name like", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameNotLike(String value) {
            addCriterion("classes_name not like", value, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameIn(List<String> values) {
            addCriterion("classes_name in", values, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameNotIn(List<String> values) {
            addCriterion("classes_name not in", values, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameBetween(String value1, String value2) {
            addCriterion("classes_name between", value1, value2, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesNameNotBetween(String value1, String value2) {
            addCriterion("classes_name not between", value1, value2, "classesName");
            return (Criteria) this;
        }

        public Criteria andClassesDateIsNull() {
            addCriterion("classes_date is null");
            return (Criteria) this;
        }

        public Criteria andClassesDateIsNotNull() {
            addCriterion("classes_date is not null");
            return (Criteria) this;
        }

        public Criteria andClassesDateEqualTo(String value) {
            addCriterion("classes_date =", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateNotEqualTo(String value) {
            addCriterion("classes_date <>", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateGreaterThan(String value) {
            addCriterion("classes_date >", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateGreaterThanOrEqualTo(String value) {
            addCriterion("classes_date >=", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateLessThan(String value) {
            addCriterion("classes_date <", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateLessThanOrEqualTo(String value) {
            addCriterion("classes_date <=", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateLike(String value) {
            addCriterion("classes_date like", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateNotLike(String value) {
            addCriterion("classes_date not like", value, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateIn(List<String> values) {
            addCriterion("classes_date in", values, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateNotIn(List<String> values) {
            addCriterion("classes_date not in", values, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateBetween(String value1, String value2) {
            addCriterion("classes_date between", value1, value2, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesDateNotBetween(String value1, String value2) {
            addCriterion("classes_date not between", value1, value2, "classesDate");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyIsNull() {
            addCriterion("classes_specialty is null");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyIsNotNull() {
            addCriterion("classes_specialty is not null");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyEqualTo(String value) {
            addCriterion("classes_specialty =", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyNotEqualTo(String value) {
            addCriterion("classes_specialty <>", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyGreaterThan(String value) {
            addCriterion("classes_specialty >", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyGreaterThanOrEqualTo(String value) {
            addCriterion("classes_specialty >=", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyLessThan(String value) {
            addCriterion("classes_specialty <", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyLessThanOrEqualTo(String value) {
            addCriterion("classes_specialty <=", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyLike(String value) {
            addCriterion("classes_specialty like", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyNotLike(String value) {
            addCriterion("classes_specialty not like", value, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyIn(List<String> values) {
            addCriterion("classes_specialty in", values, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyNotIn(List<String> values) {
            addCriterion("classes_specialty not in", values, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyBetween(String value1, String value2) {
            addCriterion("classes_specialty between", value1, value2, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesSpecialtyNotBetween(String value1, String value2) {
            addCriterion("classes_specialty not between", value1, value2, "classesSpecialty");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionIsNull() {
            addCriterion("classes_direction is null");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionIsNotNull() {
            addCriterion("classes_direction is not null");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionEqualTo(String value) {
            addCriterion("classes_direction =", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionNotEqualTo(String value) {
            addCriterion("classes_direction <>", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionGreaterThan(String value) {
            addCriterion("classes_direction >", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionGreaterThanOrEqualTo(String value) {
            addCriterion("classes_direction >=", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionLessThan(String value) {
            addCriterion("classes_direction <", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionLessThanOrEqualTo(String value) {
            addCriterion("classes_direction <=", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionLike(String value) {
            addCriterion("classes_direction like", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionNotLike(String value) {
            addCriterion("classes_direction not like", value, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionIn(List<String> values) {
            addCriterion("classes_direction in", values, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionNotIn(List<String> values) {
            addCriterion("classes_direction not in", values, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionBetween(String value1, String value2) {
            addCriterion("classes_direction between", value1, value2, "classesDirection");
            return (Criteria) this;
        }

        public Criteria andClassesDirectionNotBetween(String value1, String value2) {
            addCriterion("classes_direction not between", value1, value2, "classesDirection");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}