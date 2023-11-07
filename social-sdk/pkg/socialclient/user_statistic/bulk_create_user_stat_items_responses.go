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

// BulkCreateUserStatItemsReader is a Reader for the BulkCreateUserStatItems structure.
type BulkCreateUserStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkCreateUserStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkCreateUserStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkCreateUserStatItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkCreateUserStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkCreateUserStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkCreateUserStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkCreateUserStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkCreateUserStatItemsOK creates a BulkCreateUserStatItemsOK with default headers values
func NewBulkCreateUserStatItemsOK() *BulkCreateUserStatItemsOK {
	return &BulkCreateUserStatItemsOK{}
}

/*BulkCreateUserStatItemsOK handles this case with default header values.

  successful operation
*/
type BulkCreateUserStatItemsOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkCreateUserStatItemsOK) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] bulkCreateUserStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *BulkCreateUserStatItemsOK) ToJSONString() string {
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

func (o *BulkCreateUserStatItemsOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkCreateUserStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkCreateUserStatItemsBadRequest creates a BulkCreateUserStatItemsBadRequest with default headers values
func NewBulkCreateUserStatItemsBadRequest() *BulkCreateUserStatItemsBadRequest {
	return &BulkCreateUserStatItemsBadRequest{}
}

/*BulkCreateUserStatItemsBadRequest handles this case with default header values.

  Bad request
*/
type BulkCreateUserStatItemsBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkCreateUserStatItemsBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] bulkCreateUserStatItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkCreateUserStatItemsBadRequest) ToJSONString() string {
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

func (o *BulkCreateUserStatItemsBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkCreateUserStatItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkCreateUserStatItemsUnauthorized creates a BulkCreateUserStatItemsUnauthorized with default headers values
func NewBulkCreateUserStatItemsUnauthorized() *BulkCreateUserStatItemsUnauthorized {
	return &BulkCreateUserStatItemsUnauthorized{}
}

/*BulkCreateUserStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkCreateUserStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkCreateUserStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] bulkCreateUserStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkCreateUserStatItemsUnauthorized) ToJSONString() string {
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

func (o *BulkCreateUserStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkCreateUserStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkCreateUserStatItemsForbidden creates a BulkCreateUserStatItemsForbidden with default headers values
func NewBulkCreateUserStatItemsForbidden() *BulkCreateUserStatItemsForbidden {
	return &BulkCreateUserStatItemsForbidden{}
}

/*BulkCreateUserStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkCreateUserStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkCreateUserStatItemsForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] bulkCreateUserStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkCreateUserStatItemsForbidden) ToJSONString() string {
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

func (o *BulkCreateUserStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkCreateUserStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkCreateUserStatItemsUnprocessableEntity creates a BulkCreateUserStatItemsUnprocessableEntity with default headers values
func NewBulkCreateUserStatItemsUnprocessableEntity() *BulkCreateUserStatItemsUnprocessableEntity {
	return &BulkCreateUserStatItemsUnprocessableEntity{}
}

/*BulkCreateUserStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkCreateUserStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkCreateUserStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] bulkCreateUserStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkCreateUserStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *BulkCreateUserStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkCreateUserStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkCreateUserStatItemsInternalServerError creates a BulkCreateUserStatItemsInternalServerError with default headers values
func NewBulkCreateUserStatItemsInternalServerError() *BulkCreateUserStatItemsInternalServerError {
	return &BulkCreateUserStatItemsInternalServerError{}
}

/*BulkCreateUserStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkCreateUserStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkCreateUserStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] bulkCreateUserStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkCreateUserStatItemsInternalServerError) ToJSONString() string {
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

func (o *BulkCreateUserStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkCreateUserStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
