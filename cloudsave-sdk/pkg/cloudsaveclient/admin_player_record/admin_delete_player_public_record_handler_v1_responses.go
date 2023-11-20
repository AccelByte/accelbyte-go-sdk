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

// AdminDeletePlayerPublicRecordHandlerV1Reader is a Reader for the AdminDeletePlayerPublicRecordHandlerV1 structure.
type AdminDeletePlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlayerPublicRecordHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeletePlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlayerPublicRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlayerPublicRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeletePlayerPublicRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlayerPublicRecordHandlerV1NoContent creates a AdminDeletePlayerPublicRecordHandlerV1NoContent with default headers values
func NewAdminDeletePlayerPublicRecordHandlerV1NoContent() *AdminDeletePlayerPublicRecordHandlerV1NoContent {
	return &AdminDeletePlayerPublicRecordHandlerV1NoContent{}
}

/*AdminDeletePlayerPublicRecordHandlerV1NoContent handles this case with default header values.

  Record deleted
*/
type AdminDeletePlayerPublicRecordHandlerV1NoContent struct {
}

func (o *AdminDeletePlayerPublicRecordHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminDeletePlayerPublicRecordHandlerV1NoContent ", 204)
}

func (o *AdminDeletePlayerPublicRecordHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlayerPublicRecordHandlerV1BadRequest creates a AdminDeletePlayerPublicRecordHandlerV1BadRequest with default headers values
func NewAdminDeletePlayerPublicRecordHandlerV1BadRequest() *AdminDeletePlayerPublicRecordHandlerV1BadRequest {
	return &AdminDeletePlayerPublicRecordHandlerV1BadRequest{}
}

/*AdminDeletePlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type AdminDeletePlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminDeletePlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeletePlayerPublicRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminDeletePlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerPublicRecordHandlerV1Unauthorized creates a AdminDeletePlayerPublicRecordHandlerV1Unauthorized with default headers values
func NewAdminDeletePlayerPublicRecordHandlerV1Unauthorized() *AdminDeletePlayerPublicRecordHandlerV1Unauthorized {
	return &AdminDeletePlayerPublicRecordHandlerV1Unauthorized{}
}

/*AdminDeletePlayerPublicRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeletePlayerPublicRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerPublicRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminDeletePlayerPublicRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlayerPublicRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeletePlayerPublicRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerPublicRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerPublicRecordHandlerV1Forbidden creates a AdminDeletePlayerPublicRecordHandlerV1Forbidden with default headers values
func NewAdminDeletePlayerPublicRecordHandlerV1Forbidden() *AdminDeletePlayerPublicRecordHandlerV1Forbidden {
	return &AdminDeletePlayerPublicRecordHandlerV1Forbidden{}
}

/*AdminDeletePlayerPublicRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeletePlayerPublicRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerPublicRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminDeletePlayerPublicRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlayerPublicRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminDeletePlayerPublicRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerPublicRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerPublicRecordHandlerV1NotFound creates a AdminDeletePlayerPublicRecordHandlerV1NotFound with default headers values
func NewAdminDeletePlayerPublicRecordHandlerV1NotFound() *AdminDeletePlayerPublicRecordHandlerV1NotFound {
	return &AdminDeletePlayerPublicRecordHandlerV1NotFound{}
}

/*AdminDeletePlayerPublicRecordHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18122</td><td>record not found</td></tr></table>
*/
type AdminDeletePlayerPublicRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerPublicRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminDeletePlayerPublicRecordHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeletePlayerPublicRecordHandlerV1NotFound) ToJSONString() string {
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

func (o *AdminDeletePlayerPublicRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerPublicRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerPublicRecordHandlerV1InternalServerError creates a AdminDeletePlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewAdminDeletePlayerPublicRecordHandlerV1InternalServerError() *AdminDeletePlayerPublicRecordHandlerV1InternalServerError {
	return &AdminDeletePlayerPublicRecordHandlerV1InternalServerError{}
}

/*AdminDeletePlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18120</td><td>unable to delete record</td></tr></table>
*/
type AdminDeletePlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminDeletePlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeletePlayerPublicRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeletePlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
