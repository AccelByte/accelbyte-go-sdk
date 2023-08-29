// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_item_types

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

// AdminListItemTypesReader is a Reader for the AdminListItemTypes structure.
type AdminListItemTypesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListItemTypesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListItemTypesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListItemTypesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListItemTypesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/itemtypes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListItemTypesOK creates a AdminListItemTypesOK with default headers values
func NewAdminListItemTypesOK() *AdminListItemTypesOK {
	return &AdminListItemTypesOK{}
}

/*AdminListItemTypesOK handles this case with default header values.

  OK
*/
type AdminListItemTypesOK struct {
	Payload *inventoryclientmodels.ApimodelsListItemTypesResp
}

func (o *AdminListItemTypesOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminListItemTypesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListItemTypesOK) ToJSONString() string {
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

func (o *AdminListItemTypesOK) GetPayload() *inventoryclientmodels.ApimodelsListItemTypesResp {
	return o.Payload
}

func (o *AdminListItemTypesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListItemTypesBadRequest creates a AdminListItemTypesBadRequest with default headers values
func NewAdminListItemTypesBadRequest() *AdminListItemTypesBadRequest {
	return &AdminListItemTypesBadRequest{}
}

/*AdminListItemTypesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListItemTypesBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListItemTypesBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminListItemTypesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListItemTypesBadRequest) ToJSONString() string {
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

func (o *AdminListItemTypesBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListItemTypesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListItemTypesInternalServerError creates a AdminListItemTypesInternalServerError with default headers values
func NewAdminListItemTypesInternalServerError() *AdminListItemTypesInternalServerError {
	return &AdminListItemTypesInternalServerError{}
}

/*AdminListItemTypesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListItemTypesInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListItemTypesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminListItemTypesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListItemTypesInternalServerError) ToJSONString() string {
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

func (o *AdminListItemTypesInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListItemTypesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
