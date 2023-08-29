// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_item_types

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

// PublicListItemTypesReader is a Reader for the PublicListItemTypes structure.
type PublicListItemTypesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListItemTypesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListItemTypesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListItemTypesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListItemTypesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/public/namespaces/{namespace}/itemtypes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListItemTypesOK creates a PublicListItemTypesOK with default headers values
func NewPublicListItemTypesOK() *PublicListItemTypesOK {
	return &PublicListItemTypesOK{}
}

/*PublicListItemTypesOK handles this case with default header values.

  OK
*/
type PublicListItemTypesOK struct {
	Payload *inventoryclientmodels.ApimodelsListItemTypesResp
}

func (o *PublicListItemTypesOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/itemtypes][%d] publicListItemTypesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListItemTypesOK) ToJSONString() string {
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

func (o *PublicListItemTypesOK) GetPayload() *inventoryclientmodels.ApimodelsListItemTypesResp {
	return o.Payload
}

func (o *PublicListItemTypesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsListItemTypesResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListItemTypesBadRequest creates a PublicListItemTypesBadRequest with default headers values
func NewPublicListItemTypesBadRequest() *PublicListItemTypesBadRequest {
	return &PublicListItemTypesBadRequest{}
}

/*PublicListItemTypesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListItemTypesBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListItemTypesBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/itemtypes][%d] publicListItemTypesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListItemTypesBadRequest) ToJSONString() string {
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

func (o *PublicListItemTypesBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListItemTypesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListItemTypesInternalServerError creates a PublicListItemTypesInternalServerError with default headers values
func NewPublicListItemTypesInternalServerError() *PublicListItemTypesInternalServerError {
	return &PublicListItemTypesInternalServerError{}
}

/*PublicListItemTypesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListItemTypesInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListItemTypesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/itemtypes][%d] publicListItemTypesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListItemTypesInternalServerError) ToJSONString() string {
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

func (o *PublicListItemTypesInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListItemTypesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
