// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_statistic

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

// GetGlobalStatItemByStatCode1Reader is a Reader for the GetGlobalStatItemByStatCode1 structure.
type GetGlobalStatItemByStatCode1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGlobalStatItemByStatCode1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGlobalStatItemByStatCode1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGlobalStatItemByStatCode1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/globalstatitems/{statCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGlobalStatItemByStatCode1OK creates a GetGlobalStatItemByStatCode1OK with default headers values
func NewGetGlobalStatItemByStatCode1OK() *GetGlobalStatItemByStatCode1OK {
	return &GetGlobalStatItemByStatCode1OK{}
}

/*GetGlobalStatItemByStatCode1OK handles this case with default header values.

  successful operation
*/
type GetGlobalStatItemByStatCode1OK struct {
	Payload *socialclientmodels.GlobalStatItemInfo
}

func (o *GetGlobalStatItemByStatCode1OK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}][%d] getGlobalStatItemByStatCode1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGlobalStatItemByStatCode1OK) ToJSONString() string {
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

func (o *GetGlobalStatItemByStatCode1OK) GetPayload() *socialclientmodels.GlobalStatItemInfo {
	return o.Payload
}

func (o *GetGlobalStatItemByStatCode1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.GlobalStatItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGlobalStatItemByStatCode1NotFound creates a GetGlobalStatItemByStatCode1NotFound with default headers values
func NewGetGlobalStatItemByStatCode1NotFound() *GetGlobalStatItemByStatCode1NotFound {
	return &GetGlobalStatItemByStatCode1NotFound{}
}

/*GetGlobalStatItemByStatCode1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12244</td><td>Global stat item of [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetGlobalStatItemByStatCode1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItemByStatCode1NotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}][%d] getGlobalStatItemByStatCode1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGlobalStatItemByStatCode1NotFound) ToJSONString() string {
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

func (o *GetGlobalStatItemByStatCode1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItemByStatCode1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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