// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkResetUserStatItemValuesReader is a Reader for the BulkResetUserStatItemValues structure.
type BulkResetUserStatItemValuesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkResetUserStatItemValuesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkResetUserStatItemValuesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkResetUserStatItemValuesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkResetUserStatItemValuesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkResetUserStatItemValuesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkResetUserStatItemValuesUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkResetUserStatItemValuesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkResetUserStatItemValuesOK creates a BulkResetUserStatItemValuesOK with default headers values
func NewBulkResetUserStatItemValuesOK() *BulkResetUserStatItemValuesOK {
	return &BulkResetUserStatItemValuesOK{}
}

/*BulkResetUserStatItemValuesOK handles this case with default header values.

  successful operation
*/
type BulkResetUserStatItemValuesOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkResetUserStatItemValuesOK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItemValuesOK  %+v", 200, o.ToJSONString())
}

func (o *BulkResetUserStatItemValuesOK) ToJSONString() string {
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

func (o *BulkResetUserStatItemValuesOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkResetUserStatItemValuesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemValuesBadRequest creates a BulkResetUserStatItemValuesBadRequest with default headers values
func NewBulkResetUserStatItemValuesBadRequest() *BulkResetUserStatItemValuesBadRequest {
	return &BulkResetUserStatItemValuesBadRequest{}
}

/*BulkResetUserStatItemValuesBadRequest handles this case with default header values.

  Bad request
*/
type BulkResetUserStatItemValuesBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemValuesBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItemValuesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkResetUserStatItemValuesBadRequest) ToJSONString() string {
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

func (o *BulkResetUserStatItemValuesBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemValuesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemValuesUnauthorized creates a BulkResetUserStatItemValuesUnauthorized with default headers values
func NewBulkResetUserStatItemValuesUnauthorized() *BulkResetUserStatItemValuesUnauthorized {
	return &BulkResetUserStatItemValuesUnauthorized{}
}

/*BulkResetUserStatItemValuesUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkResetUserStatItemValuesUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemValuesUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItemValuesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkResetUserStatItemValuesUnauthorized) ToJSONString() string {
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

func (o *BulkResetUserStatItemValuesUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemValuesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemValuesForbidden creates a BulkResetUserStatItemValuesForbidden with default headers values
func NewBulkResetUserStatItemValuesForbidden() *BulkResetUserStatItemValuesForbidden {
	return &BulkResetUserStatItemValuesForbidden{}
}

/*BulkResetUserStatItemValuesForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkResetUserStatItemValuesForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemValuesForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItemValuesForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkResetUserStatItemValuesForbidden) ToJSONString() string {
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

func (o *BulkResetUserStatItemValuesForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemValuesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemValuesUnprocessableEntity creates a BulkResetUserStatItemValuesUnprocessableEntity with default headers values
func NewBulkResetUserStatItemValuesUnprocessableEntity() *BulkResetUserStatItemValuesUnprocessableEntity {
	return &BulkResetUserStatItemValuesUnprocessableEntity{}
}

/*BulkResetUserStatItemValuesUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkResetUserStatItemValuesUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkResetUserStatItemValuesUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItemValuesUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkResetUserStatItemValuesUnprocessableEntity) ToJSONString() string {
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

func (o *BulkResetUserStatItemValuesUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemValuesUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemValuesInternalServerError creates a BulkResetUserStatItemValuesInternalServerError with default headers values
func NewBulkResetUserStatItemValuesInternalServerError() *BulkResetUserStatItemValuesInternalServerError {
	return &BulkResetUserStatItemValuesInternalServerError{}
}

/*BulkResetUserStatItemValuesInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkResetUserStatItemValuesInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemValuesInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk][%d] bulkResetUserStatItemValuesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkResetUserStatItemValuesInternalServerError) ToJSONString() string {
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

func (o *BulkResetUserStatItemValuesInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemValuesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
