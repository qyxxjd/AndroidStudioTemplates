package ${packageName};

import android.<#if appCompat>support.v4.</#if>app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * A placeholder fragment containing a simple view.
 */
public class ${fragmentClass} extends Fragment {

    public static ${fragmentClass} newInstance() {
        ${fragmentClass} fragment = new ${fragmentClass}();
        Bundle bundle = new Bundle();
        bundle.putString("", "");
        fragment.setArguments(bundle);
        return fragment;
    }

    private void getParams() {
        Bundle bundle = getArguments();
        if (null != bundle && bundle.containsKey("")) {

        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
    }

    //setHasOptionsMenu(true);

    @Override public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        super.onCreateOptionsMenu(menu, inflater);
        //inflater.inflate(R.menu.xxx, menu);
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) {
        return true;
    }
}
