// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_binary_record

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

// AdminDeletePlayerBinaryRecordV1Reader is a Reader for the AdminDeletePlayerBinaryRecordV1 structure.
type AdminDeletePlayerBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlayerBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlayerBinaryRecordV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlayerBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlayerBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeletePlayerBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlayerBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlayerBinaryRecordV1NoContent creates a AdminDeletePlayerBinaryRecordV1NoContent with default headers values
func NewAdminDeletePlayerBinaryRecordV1NoContent() *AdminDeletePlayerBinaryRecordV1NoContent {
	return &AdminDeletePlayerBinaryRecordV1NoContent{}
}

/*AdminDeletePlayerBinaryRecordV1NoContent handles this case with default header values.

  Record deleted
*/
type AdminDeletePlayerBinaryRecordV1NoContent struct {
}

func (o *AdminDeletePlayerBinaryRecordV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminDeletePlayerBinaryRecordV1NoContent ", 204)
}

func (o *AdminDeletePlayerBinaryRecordV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlayerBinaryRecordV1Unauthorized creates a AdminDeletePlayerBinaryRecordV1Unauthorized with default headers values
func NewAdminDeletePlayerBinaryRecordV1Unauthorized() *AdminDeletePlayerBinaryRecordV1Unauthorized {
	return &AdminDeletePlayerBinaryRecordV1Unauthorized{}
}

/*AdminDeletePlayerBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeletePlayerBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminDeletePlayerBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlayerBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeletePlayerBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerBinaryRecordV1Forbidden creates a AdminDeletePlayerBinaryRecordV1Forbidden with default headers values
func NewAdminDeletePlayerBinaryRecordV1Forbidden() *AdminDeletePlayerBinaryRecordV1Forbidden {
	return &AdminDeletePlayerBinaryRecordV1Forbidden{}
}

/*AdminDeletePlayerBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeletePlayerBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminDeletePlayerBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlayerBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminDeletePlayerBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerBinaryRecordV1NotFound creates a AdminDeletePlayerBinaryRecordV1NotFound with default headers values
func NewAdminDeletePlayerBinaryRecordV1NotFound() *AdminDeletePlayerBinaryRecordV1NotFound {
	return &AdminDeletePlayerBinaryRecordV1NotFound{}
}

/*AdminDeletePlayerBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18338</td><td>record not found</td></tr></table>
*/
type AdminDeletePlayerBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminDeletePlayerBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeletePlayerBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *AdminDeletePlayerBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlayerBinaryRecordV1InternalServerError creates a AdminDeletePlayerBinaryRecordV1InternalServerError with default headers values
func NewAdminDeletePlayerBinaryRecordV1InternalServerError() *AdminDeletePlayerBinaryRecordV1InternalServerError {
	return &AdminDeletePlayerBinaryRecordV1InternalServerError{}
}

/*AdminDeletePlayerBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18336</td><td>unable to delete record</td></tr><tr><td>18338</td><td>record not found</td></tr></table>
*/
type AdminDeletePlayerBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeletePlayerBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminDeletePlayerBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeletePlayerBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeletePlayerBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeletePlayerBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
