// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_items

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// PublicListItemsReader is a Reader for the PublicListItems structure.
type PublicListItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListItemsOK creates a PublicListItemsOK with default headers values
func NewPublicListItemsOK() *PublicListItemsOK {
	return &PublicListItemsOK{}
}

/*PublicListItemsOK handles this case with default header values.

  OK
*/
type PublicListItemsOK struct {
	Payload *inventoryclientmodels.ApimodelsListItemResp
}

func (o *PublicListItemsOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicListItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListItemsOK) ToJSONString() string {
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

func (o *PublicListItemsOK) GetPayload() *inventoryclientmodels.ApimodelsListItemResp {
	return o.Payload
}

func (o *PublicListItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsListItemResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListItemsBadRequest creates a PublicListItemsBadRequest with default headers values
func NewPublicListItemsBadRequest() *PublicListItemsBadRequest {
	return &PublicListItemsBadRequest{}
}

/*PublicListItemsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListItemsBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicListItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListItemsBadRequest) ToJSONString() string {
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

func (o *PublicListItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListItemsInternalServerError creates a PublicListItemsInternalServerError with default headers values
func NewPublicListItemsInternalServerError() *PublicListItemsInternalServerError {
	return &PublicListItemsInternalServerError{}
}

/*PublicListItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicListItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListItemsInternalServerError) ToJSONString() string {
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

func (o *PublicListItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
