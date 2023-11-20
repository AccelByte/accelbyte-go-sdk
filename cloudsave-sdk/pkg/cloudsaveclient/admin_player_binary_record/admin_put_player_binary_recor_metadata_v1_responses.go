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

// AdminPutPlayerBinaryRecorMetadataV1Reader is a Reader for the AdminPutPlayerBinaryRecorMetadataV1 structure.
type AdminPutPlayerBinaryRecorMetadataV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutPlayerBinaryRecorMetadataV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutPlayerBinaryRecorMetadataV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutPlayerBinaryRecorMetadataV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutPlayerBinaryRecorMetadataV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutPlayerBinaryRecorMetadataV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPutPlayerBinaryRecorMetadataV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutPlayerBinaryRecorMetadataV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutPlayerBinaryRecorMetadataV1OK creates a AdminPutPlayerBinaryRecorMetadataV1OK with default headers values
func NewAdminPutPlayerBinaryRecorMetadataV1OK() *AdminPutPlayerBinaryRecorMetadataV1OK {
	return &AdminPutPlayerBinaryRecorMetadataV1OK{}
}

/*AdminPutPlayerBinaryRecorMetadataV1OK handles this case with default header values.

  Record saved
*/
type AdminPutPlayerBinaryRecorMetadataV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse
}

func (o *AdminPutPlayerBinaryRecorMetadataV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] adminPutPlayerBinaryRecorMetadataV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecorMetadataV1OK) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecorMetadataV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecorMetadataV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutPlayerBinaryRecorMetadataV1BadRequest creates a AdminPutPlayerBinaryRecorMetadataV1BadRequest with default headers values
func NewAdminPutPlayerBinaryRecorMetadataV1BadRequest() *AdminPutPlayerBinaryRecorMetadataV1BadRequest {
	return &AdminPutPlayerBinaryRecorMetadataV1BadRequest{}
}

/*AdminPutPlayerBinaryRecorMetadataV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18332</td><td>invalid request body</td></tr></table>
*/
type AdminPutPlayerBinaryRecorMetadataV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecorMetadataV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] adminPutPlayerBinaryRecorMetadataV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecorMetadataV1BadRequest) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecorMetadataV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecorMetadataV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutPlayerBinaryRecorMetadataV1Unauthorized creates a AdminPutPlayerBinaryRecorMetadataV1Unauthorized with default headers values
func NewAdminPutPlayerBinaryRecorMetadataV1Unauthorized() *AdminPutPlayerBinaryRecorMetadataV1Unauthorized {
	return &AdminPutPlayerBinaryRecorMetadataV1Unauthorized{}
}

/*AdminPutPlayerBinaryRecorMetadataV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutPlayerBinaryRecorMetadataV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecorMetadataV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] adminPutPlayerBinaryRecorMetadataV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecorMetadataV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecorMetadataV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecorMetadataV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutPlayerBinaryRecorMetadataV1Forbidden creates a AdminPutPlayerBinaryRecorMetadataV1Forbidden with default headers values
func NewAdminPutPlayerBinaryRecorMetadataV1Forbidden() *AdminPutPlayerBinaryRecorMetadataV1Forbidden {
	return &AdminPutPlayerBinaryRecorMetadataV1Forbidden{}
}

/*AdminPutPlayerBinaryRecorMetadataV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutPlayerBinaryRecorMetadataV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecorMetadataV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] adminPutPlayerBinaryRecorMetadataV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecorMetadataV1Forbidden) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecorMetadataV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecorMetadataV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutPlayerBinaryRecorMetadataV1NotFound creates a AdminPutPlayerBinaryRecorMetadataV1NotFound with default headers values
func NewAdminPutPlayerBinaryRecorMetadataV1NotFound() *AdminPutPlayerBinaryRecorMetadataV1NotFound {
	return &AdminPutPlayerBinaryRecorMetadataV1NotFound{}
}

/*AdminPutPlayerBinaryRecorMetadataV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18333</td><td>record not found</td></tr></table>
*/
type AdminPutPlayerBinaryRecorMetadataV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecorMetadataV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] adminPutPlayerBinaryRecorMetadataV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecorMetadataV1NotFound) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecorMetadataV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecorMetadataV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutPlayerBinaryRecorMetadataV1InternalServerError creates a AdminPutPlayerBinaryRecorMetadataV1InternalServerError with default headers values
func NewAdminPutPlayerBinaryRecorMetadataV1InternalServerError() *AdminPutPlayerBinaryRecorMetadataV1InternalServerError {
	return &AdminPutPlayerBinaryRecorMetadataV1InternalServerError{}
}

/*AdminPutPlayerBinaryRecorMetadataV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18334</td><td>unable to update record</td></tr></table>
*/
type AdminPutPlayerBinaryRecorMetadataV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecorMetadataV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata][%d] adminPutPlayerBinaryRecorMetadataV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecorMetadataV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecorMetadataV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecorMetadataV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
