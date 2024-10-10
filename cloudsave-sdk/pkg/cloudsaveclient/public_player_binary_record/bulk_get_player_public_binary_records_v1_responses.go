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

// BulkGetPlayerPublicBinaryRecordsV1Reader is a Reader for the BulkGetPlayerPublicBinaryRecordsV1 structure.
type BulkGetPlayerPublicBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetPlayerPublicBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetPlayerPublicBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetPlayerPublicBinaryRecordsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetPlayerPublicBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetPlayerPublicBinaryRecordsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetPlayerPublicBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetPlayerPublicBinaryRecordsV1OK creates a BulkGetPlayerPublicBinaryRecordsV1OK with default headers values
func NewBulkGetPlayerPublicBinaryRecordsV1OK() *BulkGetPlayerPublicBinaryRecordsV1OK {
	return &BulkGetPlayerPublicBinaryRecordsV1OK{}
}

/*BulkGetPlayerPublicBinaryRecordsV1OK handles this case with default header values.

  Record retrieved
*/
type BulkGetPlayerPublicBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse
}

func (o *BulkGetPlayerPublicBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public][%d] bulkGetPlayerPublicBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetPlayerPublicBinaryRecordsV1OK) ToJSONString() string {
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

func (o *BulkGetPlayerPublicBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *BulkGetPlayerPublicBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetPlayerPublicBinaryRecordsV1BadRequest creates a BulkGetPlayerPublicBinaryRecordsV1BadRequest with default headers values
func NewBulkGetPlayerPublicBinaryRecordsV1BadRequest() *BulkGetPlayerPublicBinaryRecordsV1BadRequest {
	return &BulkGetPlayerPublicBinaryRecordsV1BadRequest{}
}

/*BulkGetPlayerPublicBinaryRecordsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18342</td><td>invalid request body</td></tr></table>
*/
type BulkGetPlayerPublicBinaryRecordsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerPublicBinaryRecordsV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public][%d] bulkGetPlayerPublicBinaryRecordsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetPlayerPublicBinaryRecordsV1BadRequest) ToJSONString() string {
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

func (o *BulkGetPlayerPublicBinaryRecordsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerPublicBinaryRecordsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetPlayerPublicBinaryRecordsV1Unauthorized creates a BulkGetPlayerPublicBinaryRecordsV1Unauthorized with default headers values
func NewBulkGetPlayerPublicBinaryRecordsV1Unauthorized() *BulkGetPlayerPublicBinaryRecordsV1Unauthorized {
	return &BulkGetPlayerPublicBinaryRecordsV1Unauthorized{}
}

/*BulkGetPlayerPublicBinaryRecordsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkGetPlayerPublicBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerPublicBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public][%d] bulkGetPlayerPublicBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetPlayerPublicBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *BulkGetPlayerPublicBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerPublicBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetPlayerPublicBinaryRecordsV1Forbidden creates a BulkGetPlayerPublicBinaryRecordsV1Forbidden with default headers values
func NewBulkGetPlayerPublicBinaryRecordsV1Forbidden() *BulkGetPlayerPublicBinaryRecordsV1Forbidden {
	return &BulkGetPlayerPublicBinaryRecordsV1Forbidden{}
}

/*BulkGetPlayerPublicBinaryRecordsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetPlayerPublicBinaryRecordsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerPublicBinaryRecordsV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public][%d] bulkGetPlayerPublicBinaryRecordsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetPlayerPublicBinaryRecordsV1Forbidden) ToJSONString() string {
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

func (o *BulkGetPlayerPublicBinaryRecordsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerPublicBinaryRecordsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetPlayerPublicBinaryRecordsV1InternalServerError creates a BulkGetPlayerPublicBinaryRecordsV1InternalServerError with default headers values
func NewBulkGetPlayerPublicBinaryRecordsV1InternalServerError() *BulkGetPlayerPublicBinaryRecordsV1InternalServerError {
	return &BulkGetPlayerPublicBinaryRecordsV1InternalServerError{}
}

/*BulkGetPlayerPublicBinaryRecordsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18343</td><td>unable to get record</td></tr></table>
*/
type BulkGetPlayerPublicBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerPublicBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public][%d] bulkGetPlayerPublicBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetPlayerPublicBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *BulkGetPlayerPublicBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerPublicBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
