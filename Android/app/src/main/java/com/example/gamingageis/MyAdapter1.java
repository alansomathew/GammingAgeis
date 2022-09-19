package com.example.gamingageis;

        import android.content.Context;
        import android.view.LayoutInflater;
        import android.view.View;
        import android.view.ViewGroup;
        import android.widget.TextView;

        import androidx.annotation.NonNull;
        import androidx.recyclerview.widget.RecyclerView;

public class MyAdapter1 extends RecyclerView.Adapter<MyAdapter1.MyViewHolder> {

    String z[],y[],x[],w[],v[],u[];
    Context context;


    public MyAdapter1(Context ct,String a[],String b[],String c[],String d[],String e[],String f[]){

        context=ct;
        z=a;
        y=b;
        x=c;
        w=d;
        v=e;
        u=f;


    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        LayoutInflater inflater= LayoutInflater.from(context);
        View view = inflater.inflate(R.layout.bookingrow,parent,false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {


        holder.text1.setText(z[position]);
        holder.text2.setText(y[position]);
        holder.text3.setText(x[position]);
        holder.text4.setText(w[position]);
        holder.text5.setText(v[position]);
        holder.text6.setText(u[position]);


    }

    @Override
    public int getItemCount() {
        return z.length;
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {

        TextView text1,text2,text3,text4,text5,text6;


        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            text1 =itemView.findViewById(R.id.tv1);
            text2 =itemView.findViewById(R.id.tv2);
            text3 =itemView.findViewById(R.id.tv3);
            text4 =itemView.findViewById(R.id.tv4);
            text5 =itemView.findViewById(R.id.tv5);
            text6 =itemView.findViewById(R.id.tv6);


        }
    }
}
