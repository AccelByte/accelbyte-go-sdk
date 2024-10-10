// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// SearchItemTypeConfigReader is a Reader for the SearchItemTypeConfig structure.
type SearchItemTypeConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SearchItemTypeConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSearchItemTypeConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSearchItemTypeConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/items/configs/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSearchItemTypeConfigOK creates a SearchItemTypeConfigOK with default headers values
func NewSearchItemTypeConfigOK() *SearchItemTypeConfigOK {
	return &SearchItemTypeConfigOK{}
}

/*SearchItemTypeConfigOK handles this case with default header values.

  successful operation
*/
type SearchItemTypeConfigOK struct {
	Payload *platformclientmodels.ItemTypeConfigInfo
}

func (o *SearchItemTypeConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/items/configs/search][%d] searchItemTypeConfigOK  %+v", 200, o.ToJSONString())
}

func (o *SearchItemTypeConfigOK) ToJSONString() string {
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

func (o *SearchItemTypeConfigOK) GetPayload() *platformclientmodels.ItemTypeConfigInfo {
	return o.Payload
}

func (o *SearchItemTypeConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemTypeConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchItemTypeConfigNotFound creates a SearchItemTypeConfigNotFound with default headers values
func NewSearchItemTypeConfigNotFound() *SearchItemTypeConfigNotFound {
	return &SearchItemTypeConfigNotFound{}
}

/*SearchItemTypeConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30541</td><td>Item type config [{id}] doesn't exist</td></tr></table>
*/
type SearchItemTypeConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SearchItemTypeConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/items/configs/search][%d] searchItemTypeConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *SearchItemTypeConfigNotFound) ToJSONString() string {
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

func (o *SearchItemTypeConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SearchItemTypeConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
