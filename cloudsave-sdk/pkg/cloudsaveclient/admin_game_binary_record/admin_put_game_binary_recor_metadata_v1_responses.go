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

// AdminPutGameBinaryRecorMetadataV1Reader is a Reader for the AdminPutGameBinaryRecorMetadataV1 structure.
type AdminPutGameBinaryRecorMetadataV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutGameBinaryRecorMetadataV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutGameBinaryRecorMetadataV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutGameBinaryRecorMetadataV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutGameBinaryRecorMetadataV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutGameBinaryRecorMetadataV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPutGameBinaryRecorMetadataV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutGameBinaryRecorMetadataV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutGameBinaryRecorMetadataV1OK creates a AdminPutGameBinaryRecorMetadataV1OK with default headers values
func NewAdminPutGameBinaryRecorMetadataV1OK() *AdminPutGameBinaryRecorMetadataV1OK {
	return &AdminPutGameBinaryRecorMetadataV1OK{}
}

/*AdminPutGameBinaryRecorMetadataV1OK handles this case with default header values.

  Record saved
*/
type AdminPutGameBinaryRecorMetadataV1OK struct {
	Payload *cloudsaveclientmodels.ModelsGameBinaryRecordAdminResponse
}

func (o *AdminPutGameBinaryRecorMetadataV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1OK) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1OK) GetPayload() *cloudsaveclientmodels.ModelsGameBinaryRecordAdminResponse {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsGameBinaryRecordAdminResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutGameBinaryRecorMetadataV1BadRequest creates a AdminPutGameBinaryRecorMetadataV1BadRequest with default headers values
func NewAdminPutGameBinaryRecorMetadataV1BadRequest() *AdminPutGameBinaryRecorMetadataV1BadRequest {
	return &AdminPutGameBinaryRecorMetadataV1BadRequest{}
}

/*AdminPutGameBinaryRecorMetadataV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18316</td><td>invalid request body</td></tr></table>
*/
type AdminPutGameBinaryRecorMetadataV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1BadRequest) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutGameBinaryRecorMetadataV1Unauthorized creates a AdminPutGameBinaryRecorMetadataV1Unauthorized with default headers values
func NewAdminPutGameBinaryRecorMetadataV1Unauthorized() *AdminPutGameBinaryRecorMetadataV1Unauthorized {
	return &AdminPutGameBinaryRecorMetadataV1Unauthorized{}
}

/*AdminPutGameBinaryRecorMetadataV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutGameBinaryRecorMetadataV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutGameBinaryRecorMetadataV1Forbidden creates a AdminPutGameBinaryRecorMetadataV1Forbidden with default headers values
func NewAdminPutGameBinaryRecorMetadataV1Forbidden() *AdminPutGameBinaryRecorMetadataV1Forbidden {
	return &AdminPutGameBinaryRecorMetadataV1Forbidden{}
}

/*AdminPutGameBinaryRecorMetadataV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutGameBinaryRecorMetadataV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1Forbidden) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutGameBinaryRecorMetadataV1NotFound creates a AdminPutGameBinaryRecorMetadataV1NotFound with default headers values
func NewAdminPutGameBinaryRecorMetadataV1NotFound() *AdminPutGameBinaryRecorMetadataV1NotFound {
	return &AdminPutGameBinaryRecorMetadataV1NotFound{}
}

/*AdminPutGameBinaryRecorMetadataV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18317</td><td>record not found</td></tr></table>
*/
type AdminPutGameBinaryRecorMetadataV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1NotFound) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutGameBinaryRecorMetadataV1InternalServerError creates a AdminPutGameBinaryRecorMetadataV1InternalServerError with default headers values
func NewAdminPutGameBinaryRecorMetadataV1InternalServerError() *AdminPutGameBinaryRecorMetadataV1InternalServerError {
	return &AdminPutGameBinaryRecorMetadataV1InternalServerError{}
}

/*AdminPutGameBinaryRecorMetadataV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18318</td><td>unable to update record</td></tr></table>
*/
type AdminPutGameBinaryRecorMetadataV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata][%d] adminPutGameBinaryRecorMetadataV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameBinaryRecorMetadataV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
