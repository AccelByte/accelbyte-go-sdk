// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_player_record

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

// AdminPutPlayerRecordHandlerV1Reader is a Reader for the AdminPutPlayerRecordHandlerV1 structure.
type AdminPutPlayerRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutPlayerRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutPlayerRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutPlayerRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutPlayerRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutPlayerRecordHandlerV1OK creates a AdminPutPlayerRecordHandlerV1OK with default headers values
func NewAdminPutPlayerRecordHandlerV1OK() *AdminPutPlayerRecordHandlerV1OK {
	return &AdminPutPlayerRecordHandlerV1OK{}
}

/*AdminPutPlayerRecordHandlerV1OK handles this case with default header values.

  Record in user-level saved
*/
type AdminPutPlayerRecordHandlerV1OK struct {
}

func (o *AdminPutPlayerRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPutPlayerRecordHandlerV1OK ", 200)
}

func (o *AdminPutPlayerRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminPutPlayerRecordHandlerV1Unauthorized creates a AdminPutPlayerRecordHandlerV1Unauthorized with default headers values
func NewAdminPutPlayerRecordHandlerV1Unauthorized() *AdminPutPlayerRecordHandlerV1Unauthorized {
	return &AdminPutPlayerRecordHandlerV1Unauthorized{}
}

/*AdminPutPlayerRecordHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminPutPlayerRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPutPlayerRecordHandlerV1Unauthorized  %+v", 401, o.Payload)
}

func (o *AdminPutPlayerRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutPlayerRecordHandlerV1InternalServerError creates a AdminPutPlayerRecordHandlerV1InternalServerError with default headers values
func NewAdminPutPlayerRecordHandlerV1InternalServerError() *AdminPutPlayerRecordHandlerV1InternalServerError {
	return &AdminPutPlayerRecordHandlerV1InternalServerError{}
}

/*AdminPutPlayerRecordHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminPutPlayerRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPutPlayerRecordHandlerV1InternalServerError  %+v", 500, o.Payload)
}

func (o *AdminPutPlayerRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
