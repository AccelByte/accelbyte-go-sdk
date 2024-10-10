// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_inventories

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

// PublicListInventoriesReader is a Reader for the PublicListInventories structure.
type PublicListInventoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListInventoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListInventoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListInventoriesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListInventoriesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListInventoriesOK creates a PublicListInventoriesOK with default headers values
func NewPublicListInventoriesOK() *PublicListInventoriesOK {
	return &PublicListInventoriesOK{}
}

/*PublicListInventoriesOK handles this case with default header values.

  OK
*/
type PublicListInventoriesOK struct {
	Payload *inventoryclientmodels.ApimodelsListInventoryResp
}

func (o *PublicListInventoriesOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories][%d] publicListInventoriesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListInventoriesOK) ToJSONString() string {
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

func (o *PublicListInventoriesOK) GetPayload() *inventoryclientmodels.ApimodelsListInventoryResp {
	return o.Payload
}

func (o *PublicListInventoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsListInventoryResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListInventoriesBadRequest creates a PublicListInventoriesBadRequest with default headers values
func NewPublicListInventoriesBadRequest() *PublicListInventoriesBadRequest {
	return &PublicListInventoriesBadRequest{}
}

/*PublicListInventoriesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListInventoriesBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListInventoriesBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories][%d] publicListInventoriesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListInventoriesBadRequest) ToJSONString() string {
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

func (o *PublicListInventoriesBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListInventoriesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListInventoriesInternalServerError creates a PublicListInventoriesInternalServerError with default headers values
func NewPublicListInventoriesInternalServerError() *PublicListInventoriesInternalServerError {
	return &PublicListInventoriesInternalServerError{}
}

/*PublicListInventoriesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListInventoriesInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListInventoriesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/users/me/inventories][%d] publicListInventoriesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListInventoriesInternalServerError) ToJSONString() string {
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

func (o *PublicListInventoriesInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListInventoriesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
