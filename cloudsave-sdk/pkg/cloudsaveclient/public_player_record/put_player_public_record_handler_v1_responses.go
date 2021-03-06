// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// PutPlayerPublicRecordHandlerV1Reader is a Reader for the PutPlayerPublicRecordHandlerV1 structure.
type PutPlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutPlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPutPlayerPublicRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutPlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutPlayerPublicRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutPlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutPlayerPublicRecordHandlerV1OK creates a PutPlayerPublicRecordHandlerV1OK with default headers values
func NewPutPlayerPublicRecordHandlerV1OK() *PutPlayerPublicRecordHandlerV1OK {
	return &PutPlayerPublicRecordHandlerV1OK{}
}

/*PutPlayerPublicRecordHandlerV1OK handles this case with default header values.

  Record saved
*/
type PutPlayerPublicRecordHandlerV1OK struct {
}

func (o *PutPlayerPublicRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] putPlayerPublicRecordHandlerV1OK ", 200)
}

func (o *PutPlayerPublicRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewPutPlayerPublicRecordHandlerV1BadRequest creates a PutPlayerPublicRecordHandlerV1BadRequest with default headers values
func NewPutPlayerPublicRecordHandlerV1BadRequest() *PutPlayerPublicRecordHandlerV1BadRequest {
	return &PutPlayerPublicRecordHandlerV1BadRequest{}
}

/*PutPlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PutPlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] putPlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.Payload)
}

func (o *PutPlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPutPlayerPublicRecordHandlerV1Unauthorized creates a PutPlayerPublicRecordHandlerV1Unauthorized with default headers values
func NewPutPlayerPublicRecordHandlerV1Unauthorized() *PutPlayerPublicRecordHandlerV1Unauthorized {
	return &PutPlayerPublicRecordHandlerV1Unauthorized{}
}

/*PutPlayerPublicRecordHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PutPlayerPublicRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerPublicRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] putPlayerPublicRecordHandlerV1Unauthorized  %+v", 401, o.Payload)
}

func (o *PutPlayerPublicRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerPublicRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPutPlayerPublicRecordHandlerV1InternalServerError creates a PutPlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewPutPlayerPublicRecordHandlerV1InternalServerError() *PutPlayerPublicRecordHandlerV1InternalServerError {
	return &PutPlayerPublicRecordHandlerV1InternalServerError{}
}

/*PutPlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PutPlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] putPlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.Payload)
}

func (o *PutPlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
