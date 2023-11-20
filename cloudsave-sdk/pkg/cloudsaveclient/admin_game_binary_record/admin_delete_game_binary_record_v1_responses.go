// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_binary_record

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

// AdminDeleteGameBinaryRecordV1Reader is a Reader for the AdminDeleteGameBinaryRecordV1 structure.
type AdminDeleteGameBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteGameBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteGameBinaryRecordV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteGameBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteGameBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteGameBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteGameBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteGameBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteGameBinaryRecordV1NoContent creates a AdminDeleteGameBinaryRecordV1NoContent with default headers values
func NewAdminDeleteGameBinaryRecordV1NoContent() *AdminDeleteGameBinaryRecordV1NoContent {
	return &AdminDeleteGameBinaryRecordV1NoContent{}
}

/*AdminDeleteGameBinaryRecordV1NoContent handles this case with default header values.

  Record deleted
*/
type AdminDeleteGameBinaryRecordV1NoContent struct {
}

func (o *AdminDeleteGameBinaryRecordV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}][%d] adminDeleteGameBinaryRecordV1NoContent ", 204)
}

func (o *AdminDeleteGameBinaryRecordV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteGameBinaryRecordV1BadRequest creates a AdminDeleteGameBinaryRecordV1BadRequest with default headers values
func NewAdminDeleteGameBinaryRecordV1BadRequest() *AdminDeleteGameBinaryRecordV1BadRequest {
	return &AdminDeleteGameBinaryRecordV1BadRequest{}
}

/*AdminDeleteGameBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type AdminDeleteGameBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}][%d] adminDeleteGameBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteGameBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminDeleteGameBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteGameBinaryRecordV1Unauthorized creates a AdminDeleteGameBinaryRecordV1Unauthorized with default headers values
func NewAdminDeleteGameBinaryRecordV1Unauthorized() *AdminDeleteGameBinaryRecordV1Unauthorized {
	return &AdminDeleteGameBinaryRecordV1Unauthorized{}
}

/*AdminDeleteGameBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteGameBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}][%d] adminDeleteGameBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteGameBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteGameBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteGameBinaryRecordV1Forbidden creates a AdminDeleteGameBinaryRecordV1Forbidden with default headers values
func NewAdminDeleteGameBinaryRecordV1Forbidden() *AdminDeleteGameBinaryRecordV1Forbidden {
	return &AdminDeleteGameBinaryRecordV1Forbidden{}
}

/*AdminDeleteGameBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeleteGameBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}][%d] adminDeleteGameBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteGameBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminDeleteGameBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteGameBinaryRecordV1NotFound creates a AdminDeleteGameBinaryRecordV1NotFound with default headers values
func NewAdminDeleteGameBinaryRecordV1NotFound() *AdminDeleteGameBinaryRecordV1NotFound {
	return &AdminDeleteGameBinaryRecordV1NotFound{}
}

/*AdminDeleteGameBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18322</td><td>record not found</td></tr></table>
*/
type AdminDeleteGameBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}][%d] adminDeleteGameBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteGameBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *AdminDeleteGameBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteGameBinaryRecordV1InternalServerError creates a AdminDeleteGameBinaryRecordV1InternalServerError with default headers values
func NewAdminDeleteGameBinaryRecordV1InternalServerError() *AdminDeleteGameBinaryRecordV1InternalServerError {
	return &AdminDeleteGameBinaryRecordV1InternalServerError{}
}

/*AdminDeleteGameBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18320</td><td>unable to delete record</td></tr></table>
*/
type AdminDeleteGameBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}][%d] adminDeleteGameBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteGameBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteGameBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
