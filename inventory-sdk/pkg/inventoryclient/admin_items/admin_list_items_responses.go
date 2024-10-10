// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

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

// AdminListItemsReader is a Reader for the AdminListItems structure.
type AdminListItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListItemsOK creates a AdminListItemsOK with default headers values
func NewAdminListItemsOK() *AdminListItemsOK {
	return &AdminListItemsOK{}
}

/*AdminListItemsOK handles this case with default header values.

  OK
*/
type AdminListItemsOK struct {
	Payload *inventoryclientmodels.ApimodelsListItemResp
}

func (o *AdminListItemsOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items][%d] adminListItemsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListItemsOK) ToJSONString() string {
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

func (o *AdminListItemsOK) GetPayload() *inventoryclientmodels.ApimodelsListItemResp {
	return o.Payload
}

func (o *AdminListItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListItemsBadRequest creates a AdminListItemsBadRequest with default headers values
func NewAdminListItemsBadRequest() *AdminListItemsBadRequest {
	return &AdminListItemsBadRequest{}
}

/*AdminListItemsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListItemsBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items][%d] adminListItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListItemsBadRequest) ToJSONString() string {
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

func (o *AdminListItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListItemsInternalServerError creates a AdminListItemsInternalServerError with default headers values
func NewAdminListItemsInternalServerError() *AdminListItemsInternalServerError {
	return &AdminListItemsInternalServerError{}
}

/*AdminListItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items][%d] adminListItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListItemsInternalServerError) ToJSONString() string {
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

func (o *AdminListItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
