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

// AdminPostPlayerBinaryRecordV1Reader is a Reader for the AdminPostPlayerBinaryRecordV1 structure.
type AdminPostPlayerBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostPlayerBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostPlayerBinaryRecordV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostPlayerBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostPlayerBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostPlayerBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminPostPlayerBinaryRecordV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostPlayerBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostPlayerBinaryRecordV1Created creates a AdminPostPlayerBinaryRecordV1Created with default headers values
func NewAdminPostPlayerBinaryRecordV1Created() *AdminPostPlayerBinaryRecordV1Created {
	return &AdminPostPlayerBinaryRecordV1Created{}
}

/*AdminPostPlayerBinaryRecordV1Created handles this case with default header values.

  Record in user-level created
*/
type AdminPostPlayerBinaryRecordV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *AdminPostPlayerBinaryRecordV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminPostPlayerBinaryRecordV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryRecordV1Created) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryRecordV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPostPlayerBinaryRecordV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsUploadBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostPlayerBinaryRecordV1BadRequest creates a AdminPostPlayerBinaryRecordV1BadRequest with default headers values
func NewAdminPostPlayerBinaryRecordV1BadRequest() *AdminPostPlayerBinaryRecordV1BadRequest {
	return &AdminPostPlayerBinaryRecordV1BadRequest{}
}

/*AdminPostPlayerBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18327</td><td>invalid request body</td></tr></table>
*/
type AdminPostPlayerBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminPostPlayerBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryRecordV1Unauthorized creates a AdminPostPlayerBinaryRecordV1Unauthorized with default headers values
func NewAdminPostPlayerBinaryRecordV1Unauthorized() *AdminPostPlayerBinaryRecordV1Unauthorized {
	return &AdminPostPlayerBinaryRecordV1Unauthorized{}
}

/*AdminPostPlayerBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostPlayerBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminPostPlayerBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryRecordV1Forbidden creates a AdminPostPlayerBinaryRecordV1Forbidden with default headers values
func NewAdminPostPlayerBinaryRecordV1Forbidden() *AdminPostPlayerBinaryRecordV1Forbidden {
	return &AdminPostPlayerBinaryRecordV1Forbidden{}
}

/*AdminPostPlayerBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostPlayerBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminPostPlayerBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryRecordV1Conflict creates a AdminPostPlayerBinaryRecordV1Conflict with default headers values
func NewAdminPostPlayerBinaryRecordV1Conflict() *AdminPostPlayerBinaryRecordV1Conflict {
	return &AdminPostPlayerBinaryRecordV1Conflict{}
}

/*AdminPostPlayerBinaryRecordV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18330</td><td>key already exists</td></tr></table>
*/
type AdminPostPlayerBinaryRecordV1Conflict struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryRecordV1Conflict) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminPostPlayerBinaryRecordV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryRecordV1Conflict) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryRecordV1Conflict) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryRecordV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryRecordV1InternalServerError creates a AdminPostPlayerBinaryRecordV1InternalServerError with default headers values
func NewAdminPostPlayerBinaryRecordV1InternalServerError() *AdminPostPlayerBinaryRecordV1InternalServerError {
	return &AdminPostPlayerBinaryRecordV1InternalServerError{}
}

/*AdminPostPlayerBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18323</td><td>unable to get record</td></tr><tr><td>18328</td><td>unable to save record</td></tr><tr><td>18331</td><td>unable to get presigned URL</td></tr></table>
*/
type AdminPostPlayerBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries][%d] adminPostPlayerBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
