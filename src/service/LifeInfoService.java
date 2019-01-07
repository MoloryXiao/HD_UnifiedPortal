package service;

import bean.LivingCostTeacher;
import dao.LivingCostDao;

public class LifeInfoService {
    public LivingCostTeacher getLivingCostByTeacherID(int teacherID) {
        LivingCostDao livingCostDao = new LivingCostDao();
        LivingCostTeacher livingCostTeacher = livingCostDao.getLivingCostByTeacherID(teacherID);
        if (livingCostTeacher != null) {
            return livingCostTeacher;
        }
        return null;
    }
}
