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

// AdminPostPlayerRecordHandlerV1Reader is a Reader for the AdminPostPlayerRecordHandlerV1 structure.
type AdminPostPlayerRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostPlayerRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostPlayerRecordHandlerV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostPlayerRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostPlayerRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostPlayerRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostPlayerRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostPlayerRecordHandlerV1Created creates a AdminPostPlayerRecordHandlerV1Created with default headers values
func NewAdminPostPlayerRecordHandlerV1Created() *AdminPostPlayerRecordHandlerV1Created {
	return &AdminPostPlayerRecordHandlerV1Created{}
}

/*AdminPostPlayerRecordHandlerV1Created handles this case with default header values.

  Record in user-level saved
*/
type AdminPostPlayerRecordHandlerV1Created struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordResponse
}

func (o *AdminPostPlayerRecordHandlerV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPostPlayerRecordHandlerV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostPlayerRecordHandlerV1Created) ToJSONString() string {
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

func (o *AdminPostPlayerRecordHandlerV1Created) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordResponse {
	return o.Payload
}

func (o *AdminPostPlayerRecordHandlerV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostPlayerRecordHandlerV1BadRequest creates a AdminPostPlayerRecordHandlerV1BadRequest with default headers values
func NewAdminPostPlayerRecordHandlerV1BadRequest() *AdminPostPlayerRecordHandlerV1BadRequest {
	return &AdminPostPlayerRecordHandlerV1BadRequest{}
}

/*AdminPostPlayerRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18030</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminPostPlayerRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPostPlayerRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostPlayerRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPostPlayerRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerRecordHandlerV1Unauthorized creates a AdminPostPlayerRecordHandlerV1Unauthorized with default headers values
func NewAdminPostPlayerRecordHandlerV1Unauthorized() *AdminPostPlayerRecordHandlerV1Unauthorized {
	return &AdminPostPlayerRecordHandlerV1Unauthorized{}
}

/*AdminPostPlayerRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostPlayerRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPostPlayerRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostPlayerRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostPlayerRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerRecordHandlerV1Forbidden creates a AdminPostPlayerRecordHandlerV1Forbidden with default headers values
func NewAdminPostPlayerRecordHandlerV1Forbidden() *AdminPostPlayerRecordHandlerV1Forbidden {
	return &AdminPostPlayerRecordHandlerV1Forbidden{}
}

/*AdminPostPlayerRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostPlayerRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPostPlayerRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostPlayerRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPostPlayerRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerRecordHandlerV1InternalServerError creates a AdminPostPlayerRecordHandlerV1InternalServerError with default headers values
func NewAdminPostPlayerRecordHandlerV1InternalServerError() *AdminPostPlayerRecordHandlerV1InternalServerError {
	return &AdminPostPlayerRecordHandlerV1InternalServerError{}
}

/*AdminPostPlayerRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18033</td><td>unable to save record</td></tr><tr><td>18005</td><td>unable to decode record</td></tr></table>
*/
type AdminPostPlayerRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}][%d] adminPostPlayerRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostPlayerRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostPlayerRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
