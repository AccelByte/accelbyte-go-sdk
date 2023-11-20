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

// AdminGetPlayerBinaryRecordV1Reader is a Reader for the AdminGetPlayerBinaryRecordV1 structure.
type AdminGetPlayerBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerBinaryRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerBinaryRecordV1OK creates a AdminGetPlayerBinaryRecordV1OK with default headers values
func NewAdminGetPlayerBinaryRecordV1OK() *AdminGetPlayerBinaryRecordV1OK {
	return &AdminGetPlayerBinaryRecordV1OK{}
}

/*AdminGetPlayerBinaryRecordV1OK handles this case with default header values.

  Record in user-level retrieved
*/
type AdminGetPlayerBinaryRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse
}

func (o *AdminGetPlayerBinaryRecordV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminGetPlayerBinaryRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerBinaryRecordV1OK) ToJSONString() string {
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

func (o *AdminGetPlayerBinaryRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *AdminGetPlayerBinaryRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerBinaryRecordV1Unauthorized creates a AdminGetPlayerBinaryRecordV1Unauthorized with default headers values
func NewAdminGetPlayerBinaryRecordV1Unauthorized() *AdminGetPlayerBinaryRecordV1Unauthorized {
	return &AdminGetPlayerBinaryRecordV1Unauthorized{}
}

/*AdminGetPlayerBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetPlayerBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminGetPlayerBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBinaryRecordV1Forbidden creates a AdminGetPlayerBinaryRecordV1Forbidden with default headers values
func NewAdminGetPlayerBinaryRecordV1Forbidden() *AdminGetPlayerBinaryRecordV1Forbidden {
	return &AdminGetPlayerBinaryRecordV1Forbidden{}
}

/*AdminGetPlayerBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetPlayerBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminGetPlayerBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminGetPlayerBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBinaryRecordV1NotFound creates a AdminGetPlayerBinaryRecordV1NotFound with default headers values
func NewAdminGetPlayerBinaryRecordV1NotFound() *AdminGetPlayerBinaryRecordV1NotFound {
	return &AdminGetPlayerBinaryRecordV1NotFound{}
}

/*AdminGetPlayerBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18325</td><td>record not found</td></tr></table>
*/
type AdminGetPlayerBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminGetPlayerBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *AdminGetPlayerBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBinaryRecordV1InternalServerError creates a AdminGetPlayerBinaryRecordV1InternalServerError with default headers values
func NewAdminGetPlayerBinaryRecordV1InternalServerError() *AdminGetPlayerBinaryRecordV1InternalServerError {
	return &AdminGetPlayerBinaryRecordV1InternalServerError{}
}

/*AdminGetPlayerBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18323</td><td>unable to get record</td></tr></table>
*/
type AdminGetPlayerBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetPlayerBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminGetPlayerBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetPlayerBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
