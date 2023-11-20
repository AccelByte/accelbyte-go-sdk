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

// AdminPostGameBinaryPresignedURLV1Reader is a Reader for the AdminPostGameBinaryPresignedURLV1 structure.
type AdminPostGameBinaryPresignedURLV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostGameBinaryPresignedURLV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostGameBinaryPresignedURLV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostGameBinaryPresignedURLV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostGameBinaryPresignedURLV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostGameBinaryPresignedURLV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPostGameBinaryPresignedURLV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostGameBinaryPresignedURLV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostGameBinaryPresignedURLV1Created creates a AdminPostGameBinaryPresignedURLV1Created with default headers values
func NewAdminPostGameBinaryPresignedURLV1Created() *AdminPostGameBinaryPresignedURLV1Created {
	return &AdminPostGameBinaryPresignedURLV1Created{}
}

/*AdminPostGameBinaryPresignedURLV1Created handles this case with default header values.

  Successful Operation
*/
type AdminPostGameBinaryPresignedURLV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *AdminPostGameBinaryPresignedURLV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned][%d] adminPostGameBinaryPresignedUrlV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostGameBinaryPresignedURLV1Created) ToJSONString() string {
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

func (o *AdminPostGameBinaryPresignedURLV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPostGameBinaryPresignedURLV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryPresignedURLV1BadRequest creates a AdminPostGameBinaryPresignedURLV1BadRequest with default headers values
func NewAdminPostGameBinaryPresignedURLV1BadRequest() *AdminPostGameBinaryPresignedURLV1BadRequest {
	return &AdminPostGameBinaryPresignedURLV1BadRequest{}
}

/*AdminPostGameBinaryPresignedURLV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18311</td><td>invalid request body</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type AdminPostGameBinaryPresignedURLV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryPresignedURLV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned][%d] adminPostGameBinaryPresignedUrlV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostGameBinaryPresignedURLV1BadRequest) ToJSONString() string {
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

func (o *AdminPostGameBinaryPresignedURLV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryPresignedURLV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryPresignedURLV1Unauthorized creates a AdminPostGameBinaryPresignedURLV1Unauthorized with default headers values
func NewAdminPostGameBinaryPresignedURLV1Unauthorized() *AdminPostGameBinaryPresignedURLV1Unauthorized {
	return &AdminPostGameBinaryPresignedURLV1Unauthorized{}
}

/*AdminPostGameBinaryPresignedURLV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostGameBinaryPresignedURLV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryPresignedURLV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned][%d] adminPostGameBinaryPresignedUrlV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostGameBinaryPresignedURLV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostGameBinaryPresignedURLV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryPresignedURLV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryPresignedURLV1Forbidden creates a AdminPostGameBinaryPresignedURLV1Forbidden with default headers values
func NewAdminPostGameBinaryPresignedURLV1Forbidden() *AdminPostGameBinaryPresignedURLV1Forbidden {
	return &AdminPostGameBinaryPresignedURLV1Forbidden{}
}

/*AdminPostGameBinaryPresignedURLV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostGameBinaryPresignedURLV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryPresignedURLV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned][%d] adminPostGameBinaryPresignedUrlV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostGameBinaryPresignedURLV1Forbidden) ToJSONString() string {
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

func (o *AdminPostGameBinaryPresignedURLV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryPresignedURLV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryPresignedURLV1NotFound creates a AdminPostGameBinaryPresignedURLV1NotFound with default headers values
func NewAdminPostGameBinaryPresignedURLV1NotFound() *AdminPostGameBinaryPresignedURLV1NotFound {
	return &AdminPostGameBinaryPresignedURLV1NotFound{}
}

/*AdminPostGameBinaryPresignedURLV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18313</td><td>record not found</td></tr></table>
*/
type AdminPostGameBinaryPresignedURLV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryPresignedURLV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned][%d] adminPostGameBinaryPresignedUrlV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPostGameBinaryPresignedURLV1NotFound) ToJSONString() string {
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

func (o *AdminPostGameBinaryPresignedURLV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryPresignedURLV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryPresignedURLV1InternalServerError creates a AdminPostGameBinaryPresignedURLV1InternalServerError with default headers values
func NewAdminPostGameBinaryPresignedURLV1InternalServerError() *AdminPostGameBinaryPresignedURLV1InternalServerError {
	return &AdminPostGameBinaryPresignedURLV1InternalServerError{}
}

/*AdminPostGameBinaryPresignedURLV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18312</td><td>unable to get record</td></tr><tr><td>18314</td><td>unable to get presigned URL</td></tr></table>
*/
type AdminPostGameBinaryPresignedURLV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryPresignedURLV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned][%d] adminPostGameBinaryPresignedUrlV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostGameBinaryPresignedURLV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostGameBinaryPresignedURLV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryPresignedURLV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
