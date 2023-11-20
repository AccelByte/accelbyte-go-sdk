// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

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

// PutPlayerBinaryRecorMetadataV1Reader is a Reader for the PutPlayerBinaryRecorMetadataV1 structure.
type PutPlayerBinaryRecorMetadataV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutPlayerBinaryRecorMetadataV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPutPlayerBinaryRecorMetadataV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutPlayerBinaryRecorMetadataV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutPlayerBinaryRecorMetadataV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPutPlayerBinaryRecorMetadataV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPutPlayerBinaryRecorMetadataV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutPlayerBinaryRecorMetadataV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutPlayerBinaryRecorMetadataV1OK creates a PutPlayerBinaryRecorMetadataV1OK with default headers values
func NewPutPlayerBinaryRecorMetadataV1OK() *PutPlayerBinaryRecorMetadataV1OK {
	return &PutPlayerBinaryRecorMetadataV1OK{}
}

/*PutPlayerBinaryRecorMetadataV1OK handles this case with default header values.

  Record saved
*/
type PutPlayerBinaryRecorMetadataV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse
}

func (o *PutPlayerBinaryRecorMetadataV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] putPlayerBinaryRecorMetadataV1OK  %+v", 200, o.ToJSONString())
}

func (o *PutPlayerBinaryRecorMetadataV1OK) ToJSONString() string {
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

func (o *PutPlayerBinaryRecorMetadataV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *PutPlayerBinaryRecorMetadataV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerBinaryRecorMetadataV1BadRequest creates a PutPlayerBinaryRecorMetadataV1BadRequest with default headers values
func NewPutPlayerBinaryRecorMetadataV1BadRequest() *PutPlayerBinaryRecorMetadataV1BadRequest {
	return &PutPlayerBinaryRecorMetadataV1BadRequest{}
}

/*PutPlayerBinaryRecorMetadataV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18332</td><td>invalid request body</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PutPlayerBinaryRecorMetadataV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecorMetadataV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] putPlayerBinaryRecorMetadataV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PutPlayerBinaryRecorMetadataV1BadRequest) ToJSONString() string {
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

func (o *PutPlayerBinaryRecorMetadataV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecorMetadataV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerBinaryRecorMetadataV1Unauthorized creates a PutPlayerBinaryRecorMetadataV1Unauthorized with default headers values
func NewPutPlayerBinaryRecorMetadataV1Unauthorized() *PutPlayerBinaryRecorMetadataV1Unauthorized {
	return &PutPlayerBinaryRecorMetadataV1Unauthorized{}
}

/*PutPlayerBinaryRecorMetadataV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PutPlayerBinaryRecorMetadataV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecorMetadataV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] putPlayerBinaryRecorMetadataV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PutPlayerBinaryRecorMetadataV1Unauthorized) ToJSONString() string {
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

func (o *PutPlayerBinaryRecorMetadataV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecorMetadataV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerBinaryRecorMetadataV1Forbidden creates a PutPlayerBinaryRecorMetadataV1Forbidden with default headers values
func NewPutPlayerBinaryRecorMetadataV1Forbidden() *PutPlayerBinaryRecorMetadataV1Forbidden {
	return &PutPlayerBinaryRecorMetadataV1Forbidden{}
}

/*PutPlayerBinaryRecorMetadataV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PutPlayerBinaryRecorMetadataV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecorMetadataV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] putPlayerBinaryRecorMetadataV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PutPlayerBinaryRecorMetadataV1Forbidden) ToJSONString() string {
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

func (o *PutPlayerBinaryRecorMetadataV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecorMetadataV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerBinaryRecorMetadataV1NotFound creates a PutPlayerBinaryRecorMetadataV1NotFound with default headers values
func NewPutPlayerBinaryRecorMetadataV1NotFound() *PutPlayerBinaryRecorMetadataV1NotFound {
	return &PutPlayerBinaryRecorMetadataV1NotFound{}
}

/*PutPlayerBinaryRecorMetadataV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18333</td><td>record not found</td></tr></table>
*/
type PutPlayerBinaryRecorMetadataV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecorMetadataV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] putPlayerBinaryRecorMetadataV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PutPlayerBinaryRecorMetadataV1NotFound) ToJSONString() string {
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

func (o *PutPlayerBinaryRecorMetadataV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecorMetadataV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerBinaryRecorMetadataV1InternalServerError creates a PutPlayerBinaryRecorMetadataV1InternalServerError with default headers values
func NewPutPlayerBinaryRecorMetadataV1InternalServerError() *PutPlayerBinaryRecorMetadataV1InternalServerError {
	return &PutPlayerBinaryRecorMetadataV1InternalServerError{}
}

/*PutPlayerBinaryRecorMetadataV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18334</td><td>unable to update record</td></tr></table>
*/
type PutPlayerBinaryRecorMetadataV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecorMetadataV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] putPlayerBinaryRecorMetadataV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PutPlayerBinaryRecorMetadataV1InternalServerError) ToJSONString() string {
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

func (o *PutPlayerBinaryRecorMetadataV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecorMetadataV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
