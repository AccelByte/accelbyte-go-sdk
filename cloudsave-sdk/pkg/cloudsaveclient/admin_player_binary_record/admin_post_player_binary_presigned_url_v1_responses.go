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

// AdminPostPlayerBinaryPresignedURLV1Reader is a Reader for the AdminPostPlayerBinaryPresignedURLV1 structure.
type AdminPostPlayerBinaryPresignedURLV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostPlayerBinaryPresignedURLV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostPlayerBinaryPresignedURLV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostPlayerBinaryPresignedURLV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostPlayerBinaryPresignedURLV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostPlayerBinaryPresignedURLV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPostPlayerBinaryPresignedURLV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostPlayerBinaryPresignedURLV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostPlayerBinaryPresignedURLV1Created creates a AdminPostPlayerBinaryPresignedURLV1Created with default headers values
func NewAdminPostPlayerBinaryPresignedURLV1Created() *AdminPostPlayerBinaryPresignedURLV1Created {
	return &AdminPostPlayerBinaryPresignedURLV1Created{}
}

/*AdminPostPlayerBinaryPresignedURLV1Created handles this case with default header values.

  Successful Operation
*/
type AdminPostPlayerBinaryPresignedURLV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *AdminPostPlayerBinaryPresignedURLV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] adminPostPlayerBinaryPresignedUrlV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryPresignedURLV1Created) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryPresignedURLV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPostPlayerBinaryPresignedURLV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryPresignedURLV1BadRequest creates a AdminPostPlayerBinaryPresignedURLV1BadRequest with default headers values
func NewAdminPostPlayerBinaryPresignedURLV1BadRequest() *AdminPostPlayerBinaryPresignedURLV1BadRequest {
	return &AdminPostPlayerBinaryPresignedURLV1BadRequest{}
}

/*AdminPostPlayerBinaryPresignedURLV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18311</td><td>invalid request body</td></tr></table>
*/
type AdminPostPlayerBinaryPresignedURLV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryPresignedURLV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] adminPostPlayerBinaryPresignedUrlV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryPresignedURLV1BadRequest) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryPresignedURLV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryPresignedURLV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryPresignedURLV1Unauthorized creates a AdminPostPlayerBinaryPresignedURLV1Unauthorized with default headers values
func NewAdminPostPlayerBinaryPresignedURLV1Unauthorized() *AdminPostPlayerBinaryPresignedURLV1Unauthorized {
	return &AdminPostPlayerBinaryPresignedURLV1Unauthorized{}
}

/*AdminPostPlayerBinaryPresignedURLV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostPlayerBinaryPresignedURLV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryPresignedURLV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] adminPostPlayerBinaryPresignedUrlV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryPresignedURLV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryPresignedURLV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryPresignedURLV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryPresignedURLV1Forbidden creates a AdminPostPlayerBinaryPresignedURLV1Forbidden with default headers values
func NewAdminPostPlayerBinaryPresignedURLV1Forbidden() *AdminPostPlayerBinaryPresignedURLV1Forbidden {
	return &AdminPostPlayerBinaryPresignedURLV1Forbidden{}
}

/*AdminPostPlayerBinaryPresignedURLV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostPlayerBinaryPresignedURLV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryPresignedURLV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] adminPostPlayerBinaryPresignedUrlV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryPresignedURLV1Forbidden) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryPresignedURLV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryPresignedURLV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryPresignedURLV1NotFound creates a AdminPostPlayerBinaryPresignedURLV1NotFound with default headers values
func NewAdminPostPlayerBinaryPresignedURLV1NotFound() *AdminPostPlayerBinaryPresignedURLV1NotFound {
	return &AdminPostPlayerBinaryPresignedURLV1NotFound{}
}

/*AdminPostPlayerBinaryPresignedURLV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18313</td><td>record not found</td></tr></table>
*/
type AdminPostPlayerBinaryPresignedURLV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryPresignedURLV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] adminPostPlayerBinaryPresignedUrlV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryPresignedURLV1NotFound) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryPresignedURLV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryPresignedURLV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPostPlayerBinaryPresignedURLV1InternalServerError creates a AdminPostPlayerBinaryPresignedURLV1InternalServerError with default headers values
func NewAdminPostPlayerBinaryPresignedURLV1InternalServerError() *AdminPostPlayerBinaryPresignedURLV1InternalServerError {
	return &AdminPostPlayerBinaryPresignedURLV1InternalServerError{}
}

/*AdminPostPlayerBinaryPresignedURLV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18312</td><td>unable to get record</td></tr><tr><td>18314</td><td>unable to get presigned URL</td></tr></table>
*/
type AdminPostPlayerBinaryPresignedURLV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerBinaryPresignedURLV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] adminPostPlayerBinaryPresignedUrlV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostPlayerBinaryPresignedURLV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostPlayerBinaryPresignedURLV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerBinaryPresignedURLV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
