// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_inventory_configurations

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

// PublicListInventoryConfigurationsReader is a Reader for the PublicListInventoryConfigurations structure.
type PublicListInventoryConfigurationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListInventoryConfigurationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListInventoryConfigurationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListInventoryConfigurationsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListInventoryConfigurationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/public/namespaces/{namespace}/inventoryConfigurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListInventoryConfigurationsOK creates a PublicListInventoryConfigurationsOK with default headers values
func NewPublicListInventoryConfigurationsOK() *PublicListInventoryConfigurationsOK {
	return &PublicListInventoryConfigurationsOK{}
}

/*PublicListInventoryConfigurationsOK handles this case with default header values.

  OK
*/
type PublicListInventoryConfigurationsOK struct {
	Payload *inventoryclientmodels.ApimodelsListInventoryConfigurationsResp
}

func (o *PublicListInventoryConfigurationsOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/inventoryConfigurations][%d] publicListInventoryConfigurationsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListInventoryConfigurationsOK) ToJSONString() string {
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

func (o *PublicListInventoryConfigurationsOK) GetPayload() *inventoryclientmodels.ApimodelsListInventoryConfigurationsResp {
	return o.Payload
}

func (o *PublicListInventoryConfigurationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsListInventoryConfigurationsResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListInventoryConfigurationsBadRequest creates a PublicListInventoryConfigurationsBadRequest with default headers values
func NewPublicListInventoryConfigurationsBadRequest() *PublicListInventoryConfigurationsBadRequest {
	return &PublicListInventoryConfigurationsBadRequest{}
}

/*PublicListInventoryConfigurationsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListInventoryConfigurationsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListInventoryConfigurationsBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/inventoryConfigurations][%d] publicListInventoryConfigurationsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListInventoryConfigurationsBadRequest) ToJSONString() string {
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

func (o *PublicListInventoryConfigurationsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListInventoryConfigurationsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListInventoryConfigurationsInternalServerError creates a PublicListInventoryConfigurationsInternalServerError with default headers values
func NewPublicListInventoryConfigurationsInternalServerError() *PublicListInventoryConfigurationsInternalServerError {
	return &PublicListInventoryConfigurationsInternalServerError{}
}

/*PublicListInventoryConfigurationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListInventoryConfigurationsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicListInventoryConfigurationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/public/namespaces/{namespace}/inventoryConfigurations][%d] publicListInventoryConfigurationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListInventoryConfigurationsInternalServerError) ToJSONString() string {
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

func (o *PublicListInventoryConfigurationsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicListInventoryConfigurationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
