// Code generated by go-swagger; DO NOT EDIT.

package stat_configuration

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// ExportStatsReader is a Reader for the ExportStats structure.
type ExportStatsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ExportStatsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportStatsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/stats/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportStatsOK creates a ExportStatsOK with default headers values
func NewExportStatsOK() *ExportStatsOK {
	return &ExportStatsOK{}
}

/*ExportStatsOK handles this case with default header values.

  successful export of stat configs
*/
type ExportStatsOK struct {
}

func (o *ExportStatsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/stats/export][%d] exportStatsOK ", 200)
}

func (o *ExportStatsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
