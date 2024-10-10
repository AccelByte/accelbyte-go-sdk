// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

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

// ImportRewardsReader is a Reader for the ImportRewards structure.
type ImportRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportRewardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportRewardsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewImportRewardsConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/rewards/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportRewardsOK creates a ImportRewardsOK with default headers values
func NewImportRewardsOK() *ImportRewardsOK {
	return &ImportRewardsOK{}
}

/*ImportRewardsOK handles this case with default header values.

  successful import of reward configs
*/
type ImportRewardsOK struct {
}

func (o *ImportRewardsOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/rewards/import][%d] importRewardsOK ", 200)
}

func (o *ImportRewardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewImportRewardsBadRequest creates a ImportRewardsBadRequest with default headers values
func NewImportRewardsBadRequest() *ImportRewardsBadRequest {
	return &ImportRewardsBadRequest{}
}

/*ImportRewardsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34021</td><td>Reward data for namespace [{namespace}] is invalid</td></tr><tr><td>34023</td><td>Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate</td></tr><tr><td>34027</td><td>Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate</td></tr></table>
*/
type ImportRewardsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportRewardsBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/rewards/import][%d] importRewardsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportRewardsBadRequest) ToJSONString() string {
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

func (o *ImportRewardsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportRewardsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImportRewardsConflict creates a ImportRewardsConflict with default headers values
func NewImportRewardsConflict() *ImportRewardsConflict {
	return &ImportRewardsConflict{}
}

/*ImportRewardsConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34074</td><td>Reward Item [{itemId}] duration and end date can’t be set at the same time</td></tr><tr><td>34076</td><td>Reward Item [{sku}] duration and end date can’t be set at the same time</td></tr></table>
*/
type ImportRewardsConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportRewardsConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/rewards/import][%d] importRewardsConflict  %+v", 409, o.ToJSONString())
}

func (o *ImportRewardsConflict) ToJSONString() string {
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

func (o *ImportRewardsConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportRewardsConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
