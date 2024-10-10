// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// PublicGetMyDLCContentReader is a Reader for the PublicGetMyDLCContent structure.
type PublicGetMyDLCContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyDLCContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyDLCContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/users/me/dlc/content returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyDLCContentOK creates a PublicGetMyDLCContentOK with default headers values
func NewPublicGetMyDLCContentOK() *PublicGetMyDLCContentOK {
	return &PublicGetMyDLCContentOK{}
}

/*PublicGetMyDLCContentOK handles this case with default header values.

  successful operation
*/
type PublicGetMyDLCContentOK struct {
	Payload *platformclientmodels.SimpleUserDLCRewardContentsResponse
}

func (o *PublicGetMyDLCContentOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/users/me/dlc/content][%d] publicGetMyDlcContentOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyDLCContentOK) ToJSONString() string {
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

func (o *PublicGetMyDLCContentOK) GetPayload() *platformclientmodels.SimpleUserDLCRewardContentsResponse {
	return o.Payload
}

func (o *PublicGetMyDLCContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SimpleUserDLCRewardContentsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
