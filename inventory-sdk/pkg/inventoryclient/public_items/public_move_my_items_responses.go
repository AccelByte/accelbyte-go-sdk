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

// PublicMoveMyItemsReader is a Reader for the PublicMoveMyItems structure.
type PublicMoveMyItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicMoveMyItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicMoveMyItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicMoveMyItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicMoveMyItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicMoveMyItemsOK creates a PublicMoveMyItemsOK with default headers values
func NewPublicMoveMyItemsOK() *PublicMoveMyItemsOK {
	return &PublicMoveMyItemsOK{}
}

/*PublicMoveMyItemsOK handles this case with default header values.

  OK
*/
type PublicMoveMyItemsOK struct {
	Payload *inventoryclientmodels.ApimodelsMoveItemsResp
}

func (o *PublicMoveMyItemsOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement][%d] publicMoveMyItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicMoveMyItemsOK) ToJSONString() string {
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

func (o *PublicMoveMyItemsOK) GetPayload() *inventoryclientmodels.ApimodelsMoveItemsResp {
	return o.Payload
}

func (o *PublicMoveMyItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsMoveItemsResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicMoveMyItemsBadRequest creates a PublicMoveMyItemsBadRequest with default headers values
func NewPublicMoveMyItemsBadRequest() *PublicMoveMyItemsBadRequest {
	return &PublicMoveMyItemsBadRequest{}
}

/*PublicMoveMyItemsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicMoveMyItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicMoveMyItemsBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement][%d] publicMoveMyItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicMoveMyItemsBadRequest) ToJSONString() string {
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

func (o *PublicMoveMyItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicMoveMyItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicMoveMyItemsInternalServerError creates a PublicMoveMyItemsInternalServerError with default headers values
func NewPublicMoveMyItemsInternalServerError() *PublicMoveMyItemsInternalServerError {
	return &PublicMoveMyItemsInternalServerError{}
}

/*PublicMoveMyItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicMoveMyItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicMoveMyItemsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement][%d] publicMoveMyItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicMoveMyItemsInternalServerError) ToJSONString() string {
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

func (o *PublicMoveMyItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicMoveMyItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
