// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// OldUpdatePolicyReader is a Reader for the OldUpdatePolicy structure.
type OldUpdatePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldUpdatePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldUpdatePolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldUpdatePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/policies/{policyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldUpdatePolicyOK creates a OldUpdatePolicyOK with default headers values
func NewOldUpdatePolicyOK() *OldUpdatePolicyOK {
	return &OldUpdatePolicyOK{}
}

/*OldUpdatePolicyOK handles this case with default header values.

  operation successful
*/
type OldUpdatePolicyOK struct {
}

func (o *OldUpdatePolicyOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/{policyId}][%d] oldUpdatePolicyOK ", 200)
}

func (o *OldUpdatePolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewOldUpdatePolicyBadRequest creates a OldUpdatePolicyBadRequest with default headers values
func NewOldUpdatePolicyBadRequest() *OldUpdatePolicyBadRequest {
	return &OldUpdatePolicyBadRequest{}
}

/*OldUpdatePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_id</td></tr></table>
*/
type OldUpdatePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldUpdatePolicyBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/{policyId}][%d] oldUpdatePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldUpdatePolicyBadRequest) ToJSONString() string {
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

func (o *OldUpdatePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldUpdatePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
