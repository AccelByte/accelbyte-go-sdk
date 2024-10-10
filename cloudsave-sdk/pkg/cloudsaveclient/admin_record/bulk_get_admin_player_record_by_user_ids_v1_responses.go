// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

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

// BulkGetAdminPlayerRecordByUserIdsV1Reader is a Reader for the BulkGetAdminPlayerRecordByUserIdsV1 structure.
type BulkGetAdminPlayerRecordByUserIdsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetAdminPlayerRecordByUserIdsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetAdminPlayerRecordByUserIdsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetAdminPlayerRecordByUserIdsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetAdminPlayerRecordByUserIdsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetAdminPlayerRecordByUserIdsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkGetAdminPlayerRecordByUserIdsV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetAdminPlayerRecordByUserIdsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetAdminPlayerRecordByUserIdsV1OK creates a BulkGetAdminPlayerRecordByUserIdsV1OK with default headers values
func NewBulkGetAdminPlayerRecordByUserIdsV1OK() *BulkGetAdminPlayerRecordByUserIdsV1OK {
	return &BulkGetAdminPlayerRecordByUserIdsV1OK{}
}

/*BulkGetAdminPlayerRecordByUserIdsV1OK handles this case with default header values.

  OK
*/
type BulkGetAdminPlayerRecordByUserIdsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk][%d] bulkGetAdminPlayerRecordByUserIdsV1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1OK) ToJSONString() string {
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

func (o *BulkGetAdminPlayerRecordByUserIdsV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse {
	return o.Payload
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetAdminPlayerRecordByUserIdsV1BadRequest creates a BulkGetAdminPlayerRecordByUserIdsV1BadRequest with default headers values
func NewBulkGetAdminPlayerRecordByUserIdsV1BadRequest() *BulkGetAdminPlayerRecordByUserIdsV1BadRequest {
	return &BulkGetAdminPlayerRecordByUserIdsV1BadRequest{}
}

/*BulkGetAdminPlayerRecordByUserIdsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18184</td><td>invalid request body</td></tr></table>
*/
type BulkGetAdminPlayerRecordByUserIdsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk][%d] bulkGetAdminPlayerRecordByUserIdsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1BadRequest) ToJSONString() string {
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

func (o *BulkGetAdminPlayerRecordByUserIdsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetAdminPlayerRecordByUserIdsV1Unauthorized creates a BulkGetAdminPlayerRecordByUserIdsV1Unauthorized with default headers values
func NewBulkGetAdminPlayerRecordByUserIdsV1Unauthorized() *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized {
	return &BulkGetAdminPlayerRecordByUserIdsV1Unauthorized{}
}

/*BulkGetAdminPlayerRecordByUserIdsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkGetAdminPlayerRecordByUserIdsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk][%d] bulkGetAdminPlayerRecordByUserIdsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized) ToJSONString() string {
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

func (o *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetAdminPlayerRecordByUserIdsV1Forbidden creates a BulkGetAdminPlayerRecordByUserIdsV1Forbidden with default headers values
func NewBulkGetAdminPlayerRecordByUserIdsV1Forbidden() *BulkGetAdminPlayerRecordByUserIdsV1Forbidden {
	return &BulkGetAdminPlayerRecordByUserIdsV1Forbidden{}
}

/*BulkGetAdminPlayerRecordByUserIdsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetAdminPlayerRecordByUserIdsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk][%d] bulkGetAdminPlayerRecordByUserIdsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1Forbidden) ToJSONString() string {
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

func (o *BulkGetAdminPlayerRecordByUserIdsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetAdminPlayerRecordByUserIdsV1NotFound creates a BulkGetAdminPlayerRecordByUserIdsV1NotFound with default headers values
func NewBulkGetAdminPlayerRecordByUserIdsV1NotFound() *BulkGetAdminPlayerRecordByUserIdsV1NotFound {
	return &BulkGetAdminPlayerRecordByUserIdsV1NotFound{}
}

/*BulkGetAdminPlayerRecordByUserIdsV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18186</td><td>record not found</td></tr></table>
*/
type BulkGetAdminPlayerRecordByUserIdsV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk][%d] bulkGetAdminPlayerRecordByUserIdsV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1NotFound) ToJSONString() string {
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

func (o *BulkGetAdminPlayerRecordByUserIdsV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetAdminPlayerRecordByUserIdsV1InternalServerError creates a BulkGetAdminPlayerRecordByUserIdsV1InternalServerError with default headers values
func NewBulkGetAdminPlayerRecordByUserIdsV1InternalServerError() *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError {
	return &BulkGetAdminPlayerRecordByUserIdsV1InternalServerError{}
}

/*BulkGetAdminPlayerRecordByUserIdsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18185</td><td>unable to get record</td></tr><tr><td>18187</td><td>unable to decode record</td></tr></table>
*/
type BulkGetAdminPlayerRecordByUserIdsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk][%d] bulkGetAdminPlayerRecordByUserIdsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError) ToJSONString() string {
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

func (o *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
