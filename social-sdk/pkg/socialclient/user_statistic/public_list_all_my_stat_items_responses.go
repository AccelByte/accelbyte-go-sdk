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

// PublicListAllMyStatItemsReader is a Reader for the PublicListAllMyStatItems structure.
type PublicListAllMyStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListAllMyStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListAllMyStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListAllMyStatItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListAllMyStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListAllMyStatItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicListAllMyStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListAllMyStatItemsOK creates a PublicListAllMyStatItemsOK with default headers values
func NewPublicListAllMyStatItemsOK() *PublicListAllMyStatItemsOK {
	return &PublicListAllMyStatItemsOK{}
}

/*PublicListAllMyStatItemsOK handles this case with default header values.

  successful operation
*/
type PublicListAllMyStatItemsOK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *PublicListAllMyStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk][%d] publicListAllMyStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListAllMyStatItemsOK) ToJSONString() string {
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

func (o *PublicListAllMyStatItemsOK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *PublicListAllMyStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAllMyStatItemsBadRequest creates a PublicListAllMyStatItemsBadRequest with default headers values
func NewPublicListAllMyStatItemsBadRequest() *PublicListAllMyStatItemsBadRequest {
	return &PublicListAllMyStatItemsBadRequest{}
}

/*PublicListAllMyStatItemsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12223</td><td>Invalid stat codes in namespace [{namespace}]: [{statCodes}]</td></tr></table>
*/
type PublicListAllMyStatItemsBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListAllMyStatItemsBadRequest) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk][%d] publicListAllMyStatItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListAllMyStatItemsBadRequest) ToJSONString() string {
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

func (o *PublicListAllMyStatItemsBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListAllMyStatItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAllMyStatItemsForbidden creates a PublicListAllMyStatItemsForbidden with default headers values
func NewPublicListAllMyStatItemsForbidden() *PublicListAllMyStatItemsForbidden {
	return &PublicListAllMyStatItemsForbidden{}
}

/*PublicListAllMyStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicListAllMyStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListAllMyStatItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk][%d] publicListAllMyStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListAllMyStatItemsForbidden) ToJSONString() string {
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

func (o *PublicListAllMyStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListAllMyStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAllMyStatItemsNotFound creates a PublicListAllMyStatItemsNotFound with default headers values
func NewPublicListAllMyStatItemsNotFound() *PublicListAllMyStatItemsNotFound {
	return &PublicListAllMyStatItemsNotFound{}
}

/*PublicListAllMyStatItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12243</td><td>Stats cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicListAllMyStatItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListAllMyStatItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk][%d] publicListAllMyStatItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListAllMyStatItemsNotFound) ToJSONString() string {
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

func (o *PublicListAllMyStatItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListAllMyStatItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAllMyStatItemsUnprocessableEntity creates a PublicListAllMyStatItemsUnprocessableEntity with default headers values
func NewPublicListAllMyStatItemsUnprocessableEntity() *PublicListAllMyStatItemsUnprocessableEntity {
	return &PublicListAllMyStatItemsUnprocessableEntity{}
}

/*PublicListAllMyStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicListAllMyStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicListAllMyStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk][%d] publicListAllMyStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicListAllMyStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *PublicListAllMyStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicListAllMyStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
