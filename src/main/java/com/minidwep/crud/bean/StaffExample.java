package com.minidwep.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class StaffExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StaffExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andStaffIdIsNull() {
            addCriterion("staff_id is null");
            return (Criteria) this;
        }

        public Criteria andStaffIdIsNotNull() {
            addCriterion("staff_id is not null");
            return (Criteria) this;
        }

        public Criteria andStaffIdEqualTo(Integer value) {
            addCriterion("staff_id =", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotEqualTo(Integer value) {
            addCriterion("staff_id <>", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdGreaterThan(Integer value) {
            addCriterion("staff_id >", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("staff_id >=", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdLessThan(Integer value) {
            addCriterion("staff_id <", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdLessThanOrEqualTo(Integer value) {
            addCriterion("staff_id <=", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdIn(List<Integer> values) {
            addCriterion("staff_id in", values, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotIn(List<Integer> values) {
            addCriterion("staff_id not in", values, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdBetween(Integer value1, Integer value2) {
            addCriterion("staff_id between", value1, value2, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotBetween(Integer value1, Integer value2) {
            addCriterion("staff_id not between", value1, value2, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffNumberIsNull() {
            addCriterion("staff_number is null");
            return (Criteria) this;
        }

        public Criteria andStaffNumberIsNotNull() {
            addCriterion("staff_number is not null");
            return (Criteria) this;
        }

        public Criteria andStaffNumberEqualTo(Integer value) {
            addCriterion("staff_number =", value, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberNotEqualTo(Integer value) {
            addCriterion("staff_number <>", value, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberGreaterThan(Integer value) {
            addCriterion("staff_number >", value, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("staff_number >=", value, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberLessThan(Integer value) {
            addCriterion("staff_number <", value, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberLessThanOrEqualTo(Integer value) {
            addCriterion("staff_number <=", value, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberIn(List<Integer> values) {
            addCriterion("staff_number in", values, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberNotIn(List<Integer> values) {
            addCriterion("staff_number not in", values, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberBetween(Integer value1, Integer value2) {
            addCriterion("staff_number between", value1, value2, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("staff_number not between", value1, value2, "staffNumber");
            return (Criteria) this;
        }

        public Criteria andStaffMobileIsNull() {
            addCriterion("staff_mobile is null");
            return (Criteria) this;
        }

        public Criteria andStaffMobileIsNotNull() {
            addCriterion("staff_mobile is not null");
            return (Criteria) this;
        }

        public Criteria andStaffMobileEqualTo(String value) {
            addCriterion("staff_mobile =", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileNotEqualTo(String value) {
            addCriterion("staff_mobile <>", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileGreaterThan(String value) {
            addCriterion("staff_mobile >", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileGreaterThanOrEqualTo(String value) {
            addCriterion("staff_mobile >=", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileLessThan(String value) {
            addCriterion("staff_mobile <", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileLessThanOrEqualTo(String value) {
            addCriterion("staff_mobile <=", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileLike(String value) {
            addCriterion("staff_mobile like", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileNotLike(String value) {
            addCriterion("staff_mobile not like", value, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileIn(List<String> values) {
            addCriterion("staff_mobile in", values, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileNotIn(List<String> values) {
            addCriterion("staff_mobile not in", values, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileBetween(String value1, String value2) {
            addCriterion("staff_mobile between", value1, value2, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffMobileNotBetween(String value1, String value2) {
            addCriterion("staff_mobile not between", value1, value2, "staffMobile");
            return (Criteria) this;
        }

        public Criteria andStaffNameIsNull() {
            addCriterion("staff_name is null");
            return (Criteria) this;
        }

        public Criteria andStaffNameIsNotNull() {
            addCriterion("staff_name is not null");
            return (Criteria) this;
        }

        public Criteria andStaffNameEqualTo(String value) {
            addCriterion("staff_name =", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotEqualTo(String value) {
            addCriterion("staff_name <>", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameGreaterThan(String value) {
            addCriterion("staff_name >", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameGreaterThanOrEqualTo(String value) {
            addCriterion("staff_name >=", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameLessThan(String value) {
            addCriterion("staff_name <", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameLessThanOrEqualTo(String value) {
            addCriterion("staff_name <=", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameLike(String value) {
            addCriterion("staff_name like", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotLike(String value) {
            addCriterion("staff_name not like", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameIn(List<String> values) {
            addCriterion("staff_name in", values, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotIn(List<String> values) {
            addCriterion("staff_name not in", values, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameBetween(String value1, String value2) {
            addCriterion("staff_name between", value1, value2, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotBetween(String value1, String value2) {
            addCriterion("staff_name not between", value1, value2, "staffName");
            return (Criteria) this;
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

        public Criteria andStaffGenderIsNull() {
            addCriterion("staff_gender is null");
            return (Criteria) this;
        }

        public Criteria andStaffGenderIsNotNull() {
            addCriterion("staff_gender is not null");
            return (Criteria) this;
        }

        public Criteria andStaffGenderEqualTo(String value) {
            addCriterion("staff_gender =", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderNotEqualTo(String value) {
            addCriterion("staff_gender <>", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderGreaterThan(String value) {
            addCriterion("staff_gender >", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderGreaterThanOrEqualTo(String value) {
            addCriterion("staff_gender >=", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderLessThan(String value) {
            addCriterion("staff_gender <", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderLessThanOrEqualTo(String value) {
            addCriterion("staff_gender <=", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderLike(String value) {
            addCriterion("staff_gender like", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderNotLike(String value) {
            addCriterion("staff_gender not like", value, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderIn(List<String> values) {
            addCriterion("staff_gender in", values, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderNotIn(List<String> values) {
            addCriterion("staff_gender not in", values, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderBetween(String value1, String value2) {
            addCriterion("staff_gender between", value1, value2, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffGenderNotBetween(String value1, String value2) {
            addCriterion("staff_gender not between", value1, value2, "staffGender");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhIsNull() {
            addCriterion("staff_bitrh is null");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhIsNotNull() {
            addCriterion("staff_bitrh is not null");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhEqualTo(Date value) {
            addCriterionForJDBCDate("staff_bitrh =", value, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhNotEqualTo(Date value) {
            addCriterionForJDBCDate("staff_bitrh <>", value, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhGreaterThan(Date value) {
            addCriterionForJDBCDate("staff_bitrh >", value, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("staff_bitrh >=", value, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhLessThan(Date value) {
            addCriterionForJDBCDate("staff_bitrh <", value, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("staff_bitrh <=", value, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhIn(List<Date> values) {
            addCriterionForJDBCDate("staff_bitrh in", values, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhNotIn(List<Date> values) {
            addCriterionForJDBCDate("staff_bitrh not in", values, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("staff_bitrh between", value1, value2, "staffBitrh");
            return (Criteria) this;
        }

        public Criteria andStaffBitrhNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("staff_bitrh not between", value1, value2, "staffBitrh");
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