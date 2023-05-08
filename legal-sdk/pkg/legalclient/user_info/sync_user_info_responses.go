// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_info

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// SyncUserInfoReader is a Reader for the SyncUserInfo structure.
type SyncUserInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncUserInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncUserInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /agreement/admin/userInfo returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncUserInfoOK creates a SyncUserInfoOK with default headers values
func NewSyncUserInfoOK() *SyncUserInfoOK {
	return &SyncUserInfoOK{}
}

/*SyncUserInfoOK handles this case with default header values.

  Successful operation
*/
type SyncUserInfoOK struct {
}

func (o *SyncUserInfoOK) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/userInfo][%d] syncUserInfoOK ", 200)
}

func (o *SyncUserInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
