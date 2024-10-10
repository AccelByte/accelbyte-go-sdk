// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tags

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

// AdminDeleteTagHandlerV1Reader is a Reader for the AdminDeleteTagHandlerV1 structure.
type AdminDeleteTagHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteTagHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteTagHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteTagHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteTagHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteTagHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteTagHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteTagHandlerV1NoContent creates a AdminDeleteTagHandlerV1NoContent with default headers values
func NewAdminDeleteTagHandlerV1NoContent() *AdminDeleteTagHandlerV1NoContent {
	return &AdminDeleteTagHandlerV1NoContent{}
}

/*AdminDeleteTagHandlerV1NoContent handles this case with default header values.

  Tag deleted
*/
type AdminDeleteTagHandlerV1NoContent struct {
}

func (o *AdminDeleteTagHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}][%d] adminDeleteTagHandlerV1NoContent ", 204)
}

func (o *AdminDeleteTagHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteTagHandlerV1Unauthorized creates a AdminDeleteTagHandlerV1Unauthorized with default headers values
func NewAdminDeleteTagHandlerV1Unauthorized() *AdminDeleteTagHandlerV1Unauthorized {
	return &AdminDeleteTagHandlerV1Unauthorized{}
}

/*AdminDeleteTagHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteTagHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteTagHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}][%d] adminDeleteTagHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteTagHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteTagHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteTagHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTagHandlerV1Forbidden creates a AdminDeleteTagHandlerV1Forbidden with default headers values
func NewAdminDeleteTagHandlerV1Forbidden() *AdminDeleteTagHandlerV1Forbidden {
	return &AdminDeleteTagHandlerV1Forbidden{}
}

/*AdminDeleteTagHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeleteTagHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteTagHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}][%d] adminDeleteTagHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteTagHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminDeleteTagHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteTagHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTagHandlerV1NotFound creates a AdminDeleteTagHandlerV1NotFound with default headers values
func NewAdminDeleteTagHandlerV1NotFound() *AdminDeleteTagHandlerV1NotFound {
	return &AdminDeleteTagHandlerV1NotFound{}
}

/*AdminDeleteTagHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18510</td><td>tag not found</td></tr></table>
*/
type AdminDeleteTagHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteTagHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}][%d] adminDeleteTagHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteTagHandlerV1NotFound) ToJSONString() string {
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

func (o *AdminDeleteTagHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteTagHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTagHandlerV1InternalServerError creates a AdminDeleteTagHandlerV1InternalServerError with default headers values
func NewAdminDeleteTagHandlerV1InternalServerError() *AdminDeleteTagHandlerV1InternalServerError {
	return &AdminDeleteTagHandlerV1InternalServerError{}
}

/*AdminDeleteTagHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18509</td><td>unable to delete tag</td></tr></table>
*/
type AdminDeleteTagHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteTagHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}][%d] adminDeleteTagHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteTagHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteTagHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteTagHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
