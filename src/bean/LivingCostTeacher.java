package bean;

public class LivingCostTeacher {
    private int id;
    private int teacher_no;
    private float yicard_balance;
    private float electric_balance;
    private float water_balance;
    private float network_fee;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTeacher_no() {
        return teacher_no;
    }

    public void setTeacher_no(int teacher_no) {
        this.teacher_no = teacher_no;
    }

    public float getYicard_balance() {
        return yicard_balance;
    }

    public void setYicard_balance(float yicard_balance) {
        this.yicard_balance = yicard_balance;
    }

    public float getElectric_balance() {
        return electric_balance;
    }

    public void setElectric_balance(float electric_balance) {
        this.electric_balance = electric_balance;
    }

    public float getWater_balance() {
        return water_balance;
    }

    public void setWater_balance(float water_balance) {
        this.water_balance = water_balance;
    }

    public float getNetwork_fee() {
        return network_fee;
    }

    public void setNetwork_fee(float network_fee) {
        this.network_fee = network_fee;
    }
}
