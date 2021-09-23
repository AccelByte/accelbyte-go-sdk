// Code generated by go-swagger; DO NOT EDIT.

package admin_game_record

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminGetGameRecordHandlerV1Reader is a Reader for the AdminGetGameRecordHandlerV1 structure.
type AdminGetGameRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetGameRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetGameRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetGameRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetGameRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetGameRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetGameRecordHandlerV1OK creates a AdminGetGameRecordHandlerV1OK with default headers values
func NewAdminGetGameRecordHandlerV1OK() *AdminGetGameRecordHandlerV1OK {
	return &AdminGetGameRecordHandlerV1OK{}
}

/*AdminGetGameRecordHandlerV1OK handles this case with default header values.

  Record in namespace-level retrieved
*/
type AdminGetGameRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsGameRecord
}

func (o *AdminGetGameRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminGetGameRecordHandlerV1OK  %+v", 200, o.Payload)
}

func (o *AdminGetGameRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsGameRecord {
	return o.Payload
}

func (o *AdminGetGameRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsGameRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGameRecordHandlerV1Unauthorized creates a AdminGetGameRecordHandlerV1Unauthorized with default headers values
func NewAdminGetGameRecordHandlerV1Unauthorized() *AdminGetGameRecordHandlerV1Unauthorized {
	return &AdminGetGameRecordHandlerV1Unauthorized{}
}

/*AdminGetGameRecordHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetGameRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetGameRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminGetGameRecordHandlerV1Unauthorized  %+v", 401, o.Payload)
}

func (o *AdminGetGameRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetGameRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGameRecordHandlerV1NotFound creates a AdminGetGameRecordHandlerV1NotFound with default headers values
func NewAdminGetGameRecordHandlerV1NotFound() *AdminGetGameRecordHandlerV1NotFound {
	return &AdminGetGameRecordHandlerV1NotFound{}
}

/*AdminGetGameRecordHandlerV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetGameRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetGameRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminGetGameRecordHandlerV1NotFound  %+v", 404, o.Payload)
}

func (o *AdminGetGameRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetGameRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGameRecordHandlerV1InternalServerError creates a AdminGetGameRecordHandlerV1InternalServerError with default headers values
func NewAdminGetGameRecordHandlerV1InternalServerError() *AdminGetGameRecordHandlerV1InternalServerError {
	return &AdminGetGameRecordHandlerV1InternalServerError{}
}

/*AdminGetGameRecordHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetGameRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetGameRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminGetGameRecordHandlerV1InternalServerError  %+v", 500, o.Payload)
}

func (o *AdminGetGameRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetGameRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
