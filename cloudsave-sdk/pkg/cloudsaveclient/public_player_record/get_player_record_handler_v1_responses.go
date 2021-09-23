// Code generated by go-swagger; DO NOT EDIT.

package public_player_record

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

// GetPlayerRecordHandlerV1Reader is a Reader for the GetPlayerRecordHandlerV1 structure.
type GetPlayerRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlayerRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlayerRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPlayerRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPlayerRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPlayerRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlayerRecordHandlerV1OK creates a GetPlayerRecordHandlerV1OK with default headers values
func NewGetPlayerRecordHandlerV1OK() *GetPlayerRecordHandlerV1OK {
	return &GetPlayerRecordHandlerV1OK{}
}

/*GetPlayerRecordHandlerV1OK handles this case with default header values.

  Record retrieved
*/
type GetPlayerRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecord
}

func (o *GetPlayerRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] getPlayerRecordHandlerV1OK  %+v", 200, o.Payload)
}

func (o *GetPlayerRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecord {
	return o.Payload
}

func (o *GetPlayerRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordHandlerV1Unauthorized creates a GetPlayerRecordHandlerV1Unauthorized with default headers values
func NewGetPlayerRecordHandlerV1Unauthorized() *GetPlayerRecordHandlerV1Unauthorized {
	return &GetPlayerRecordHandlerV1Unauthorized{}
}

/*GetPlayerRecordHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetPlayerRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] getPlayerRecordHandlerV1Unauthorized  %+v", 401, o.Payload)
}

func (o *GetPlayerRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordHandlerV1NotFound creates a GetPlayerRecordHandlerV1NotFound with default headers values
func NewGetPlayerRecordHandlerV1NotFound() *GetPlayerRecordHandlerV1NotFound {
	return &GetPlayerRecordHandlerV1NotFound{}
}

/*GetPlayerRecordHandlerV1NotFound handles this case with default header values.

  Not Found
*/
type GetPlayerRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] getPlayerRecordHandlerV1NotFound  %+v", 404, o.Payload)
}

func (o *GetPlayerRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordHandlerV1InternalServerError creates a GetPlayerRecordHandlerV1InternalServerError with default headers values
func NewGetPlayerRecordHandlerV1InternalServerError() *GetPlayerRecordHandlerV1InternalServerError {
	return &GetPlayerRecordHandlerV1InternalServerError{}
}

/*GetPlayerRecordHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPlayerRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] getPlayerRecordHandlerV1InternalServerError  %+v", 500, o.Payload)
}

func (o *GetPlayerRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
