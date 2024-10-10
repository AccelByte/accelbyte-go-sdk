// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminGetPlayerRecordsHandlerV1Reader is a Reader for the AdminGetPlayerRecordsHandlerV1 structure.
type AdminGetPlayerRecordsHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerRecordsHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerRecordsHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlayerRecordsHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerRecordsHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerRecordsHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerRecordsHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerRecordsHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerRecordsHandlerV1OK creates a AdminGetPlayerRecordsHandlerV1OK with default headers values
func NewAdminGetPlayerRecordsHandlerV1OK() *AdminGetPlayerRecordsHandlerV1OK {
	return &AdminGetPlayerRecordsHandlerV1OK{}
}

/*AdminGetPlayerRecordsHandlerV1OK handles this case with default header values.

  OK
*/
type AdminGetPlayerRecordsHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse
}

func (o *AdminGetPlayerRecordsHandlerV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminGetPlayerRecordsHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerRecordsHandlerV1OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetPlayerRecordsHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse {
	return o.Payload
}

func (o *AdminGetPlayerRecordsHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordsHandlerV1BadRequest creates a AdminGetPlayerRecordsHandlerV1BadRequest with default headers values
func NewAdminGetPlayerRecordsHandlerV1BadRequest() *AdminGetPlayerRecordsHandlerV1BadRequest {
	return &AdminGetPlayerRecordsHandlerV1BadRequest{}
}

/*AdminGetPlayerRecordsHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18125</td><td>invalid request body</td></tr><tr><td>18126</td><td>request record keys list exceed max size [%d]</td></tr></table>
*/
type AdminGetPlayerRecordsHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordsHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminGetPlayerRecordsHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlayerRecordsHandlerV1BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetPlayerRecordsHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordsHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordsHandlerV1Unauthorized creates a AdminGetPlayerRecordsHandlerV1Unauthorized with default headers values
func NewAdminGetPlayerRecordsHandlerV1Unauthorized() *AdminGetPlayerRecordsHandlerV1Unauthorized {
	return &AdminGetPlayerRecordsHandlerV1Unauthorized{}
}

/*AdminGetPlayerRecordsHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetPlayerRecordsHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordsHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminGetPlayerRecordsHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerRecordsHandlerV1Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetPlayerRecordsHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordsHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordsHandlerV1Forbidden creates a AdminGetPlayerRecordsHandlerV1Forbidden with default headers values
func NewAdminGetPlayerRecordsHandlerV1Forbidden() *AdminGetPlayerRecordsHandlerV1Forbidden {
	return &AdminGetPlayerRecordsHandlerV1Forbidden{}
}

/*AdminGetPlayerRecordsHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetPlayerRecordsHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordsHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminGetPlayerRecordsHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerRecordsHandlerV1Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetPlayerRecordsHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordsHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordsHandlerV1NotFound creates a AdminGetPlayerRecordsHandlerV1NotFound with default headers values
func NewAdminGetPlayerRecordsHandlerV1NotFound() *AdminGetPlayerRecordsHandlerV1NotFound {
	return &AdminGetPlayerRecordsHandlerV1NotFound{}
}

/*AdminGetPlayerRecordsHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18186</td><td>record not found</td></tr></table>
*/
type AdminGetPlayerRecordsHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordsHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminGetPlayerRecordsHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerRecordsHandlerV1NotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetPlayerRecordsHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordsHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerRecordsHandlerV1InternalServerError creates a AdminGetPlayerRecordsHandlerV1InternalServerError with default headers values
func NewAdminGetPlayerRecordsHandlerV1InternalServerError() *AdminGetPlayerRecordsHandlerV1InternalServerError {
	return &AdminGetPlayerRecordsHandlerV1InternalServerError{}
}

/*AdminGetPlayerRecordsHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18124</td><td>unable to get record</td></tr><tr><td>18006</td><td>unable to decode record</td></tr></table>
*/
type AdminGetPlayerRecordsHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerRecordsHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminGetPlayerRecordsHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerRecordsHandlerV1InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetPlayerRecordsHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerRecordsHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
