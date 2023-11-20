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

// AdminPostGameBinaryRecordV1Reader is a Reader for the AdminPostGameBinaryRecordV1 structure.
type AdminPostGameBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostGameBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostGameBinaryRecordV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostGameBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostGameBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostGameBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminPostGameBinaryRecordV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostGameBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/binaries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostGameBinaryRecordV1Created creates a AdminPostGameBinaryRecordV1Created with default headers values
func NewAdminPostGameBinaryRecordV1Created() *AdminPostGameBinaryRecordV1Created {
	return &AdminPostGameBinaryRecordV1Created{}
}

/*AdminPostGameBinaryRecordV1Created handles this case with default header values.

  Record in namespace-level created
*/
type AdminPostGameBinaryRecordV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *AdminPostGameBinaryRecordV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries][%d] adminPostGameBinaryRecordV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostGameBinaryRecordV1Created) ToJSONString() string {
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

func (o *AdminPostGameBinaryRecordV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPostGameBinaryRecordV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryRecordV1BadRequest creates a AdminPostGameBinaryRecordV1BadRequest with default headers values
func NewAdminPostGameBinaryRecordV1BadRequest() *AdminPostGameBinaryRecordV1BadRequest {
	return &AdminPostGameBinaryRecordV1BadRequest{}
}

/*AdminPostGameBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18305</td><td>invalid request body</td></tr></table>
*/
type AdminPostGameBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries][%d] adminPostGameBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostGameBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminPostGameBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryRecordV1Unauthorized creates a AdminPostGameBinaryRecordV1Unauthorized with default headers values
func NewAdminPostGameBinaryRecordV1Unauthorized() *AdminPostGameBinaryRecordV1Unauthorized {
	return &AdminPostGameBinaryRecordV1Unauthorized{}
}

/*AdminPostGameBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostGameBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries][%d] adminPostGameBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostGameBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostGameBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryRecordV1Forbidden creates a AdminPostGameBinaryRecordV1Forbidden with default headers values
func NewAdminPostGameBinaryRecordV1Forbidden() *AdminPostGameBinaryRecordV1Forbidden {
	return &AdminPostGameBinaryRecordV1Forbidden{}
}

/*AdminPostGameBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostGameBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries][%d] adminPostGameBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostGameBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminPostGameBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryRecordV1Conflict creates a AdminPostGameBinaryRecordV1Conflict with default headers values
func NewAdminPostGameBinaryRecordV1Conflict() *AdminPostGameBinaryRecordV1Conflict {
	return &AdminPostGameBinaryRecordV1Conflict{}
}

/*AdminPostGameBinaryRecordV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18309</td><td>key already exists</td></tr></table>
*/
type AdminPostGameBinaryRecordV1Conflict struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryRecordV1Conflict) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries][%d] adminPostGameBinaryRecordV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminPostGameBinaryRecordV1Conflict) ToJSONString() string {
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

func (o *AdminPostGameBinaryRecordV1Conflict) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryRecordV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostGameBinaryRecordV1InternalServerError creates a AdminPostGameBinaryRecordV1InternalServerError with default headers values
func NewAdminPostGameBinaryRecordV1InternalServerError() *AdminPostGameBinaryRecordV1InternalServerError {
	return &AdminPostGameBinaryRecordV1InternalServerError{}
}

/*AdminPostGameBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18301</td><td>unable to get record</td></tr><tr><td>18307</td><td>unable to save record</td></tr><tr><td>18310</td><td>unable to get presigned URL</td></tr></table>
*/
type AdminPostGameBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/binaries][%d] adminPostGameBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostGameBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostGameBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
