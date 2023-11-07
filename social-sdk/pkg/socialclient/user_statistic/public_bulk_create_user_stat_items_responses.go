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

// PublicBulkCreateUserStatItemsReader is a Reader for the PublicBulkCreateUserStatItems structure.
type PublicBulkCreateUserStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkCreateUserStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkCreateUserStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkCreateUserStatItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicBulkCreateUserStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicBulkCreateUserStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicBulkCreateUserStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkCreateUserStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkCreateUserStatItemsOK creates a PublicBulkCreateUserStatItemsOK with default headers values
func NewPublicBulkCreateUserStatItemsOK() *PublicBulkCreateUserStatItemsOK {
	return &PublicBulkCreateUserStatItemsOK{}
}

/*PublicBulkCreateUserStatItemsOK handles this case with default header values.

  successful operation
*/
type PublicBulkCreateUserStatItemsOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *PublicBulkCreateUserStatItemsOK) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsOK) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkCreateUserStatItemsBadRequest creates a PublicBulkCreateUserStatItemsBadRequest with default headers values
func NewPublicBulkCreateUserStatItemsBadRequest() *PublicBulkCreateUserStatItemsBadRequest {
	return &PublicBulkCreateUserStatItemsBadRequest{}
}

/*PublicBulkCreateUserStatItemsBadRequest handles this case with default header values.

  Bad request
*/
type PublicBulkCreateUserStatItemsBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkCreateUserStatItemsBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsBadRequest) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkCreateUserStatItemsUnauthorized creates a PublicBulkCreateUserStatItemsUnauthorized with default headers values
func NewPublicBulkCreateUserStatItemsUnauthorized() *PublicBulkCreateUserStatItemsUnauthorized {
	return &PublicBulkCreateUserStatItemsUnauthorized{}
}

/*PublicBulkCreateUserStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicBulkCreateUserStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkCreateUserStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsUnauthorized) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkCreateUserStatItemsForbidden creates a PublicBulkCreateUserStatItemsForbidden with default headers values
func NewPublicBulkCreateUserStatItemsForbidden() *PublicBulkCreateUserStatItemsForbidden {
	return &PublicBulkCreateUserStatItemsForbidden{}
}

/*PublicBulkCreateUserStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicBulkCreateUserStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkCreateUserStatItemsForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsForbidden) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkCreateUserStatItemsUnprocessableEntity creates a PublicBulkCreateUserStatItemsUnprocessableEntity with default headers values
func NewPublicBulkCreateUserStatItemsUnprocessableEntity() *PublicBulkCreateUserStatItemsUnprocessableEntity {
	return &PublicBulkCreateUserStatItemsUnprocessableEntity{}
}

/*PublicBulkCreateUserStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicBulkCreateUserStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkCreateUserStatItemsInternalServerError creates a PublicBulkCreateUserStatItemsInternalServerError with default headers values
func NewPublicBulkCreateUserStatItemsInternalServerError() *PublicBulkCreateUserStatItemsInternalServerError {
	return &PublicBulkCreateUserStatItemsInternalServerError{}
}

/*PublicBulkCreateUserStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicBulkCreateUserStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicBulkCreateUserStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsInternalServerError) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
