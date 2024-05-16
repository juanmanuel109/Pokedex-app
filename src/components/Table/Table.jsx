import * as React from "react";
import Box from "@mui/material/Box";
import { DataGrid } from "@mui/x-data-grid";

export default function Table(props) {
    const { tableBasicColumns } = props;
    const [data, setData] = React.useState([]);

    const columns = [...tableBasicColumns];
    return (
        <div
            style={{
                background: "white",
                margin: 20,
            }}
        >
            <DataGrid
                rows={data}
                columns={columns}
                initialState={{
                    pagination: {
                        paginationModel: { page: 0, pageSize: 5 },
                    },
                }}
                pageSizeOptions={[5, 10]}
            />
        </div>
    );
}
