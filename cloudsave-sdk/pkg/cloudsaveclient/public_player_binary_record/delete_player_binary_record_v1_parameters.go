// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewDeletePlayerBinaryRecordV1Params creates a new DeletePlayerBinaryRecordV1Params object
// with the default values initialized.
func NewDeletePlayerBinaryRecordV1Params() *DeletePlayerBinaryRecordV1Params {
	var ()
	return &DeletePlayerBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePlayerBinaryRecordV1ParamsWithTimeout creates a new DeletePlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePlayerBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *DeletePlayerBinaryRecordV1Params {
	var ()
	return &DeletePlayerBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewDeletePlayerBinaryRecordV1ParamsWithContext creates a new DeletePlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePlayerBinaryRecordV1ParamsWithContext(ctx context.Context) *DeletePlayerBinaryRecordV1Params {
	var ()
	return &DeletePlayerBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewDeletePlayerBinaryRecordV1ParamsWithHTTPClient creates a new DeletePlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePlayerBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *DeletePlayerBinaryRecordV1Params {
	var ()
	return &DeletePlayerBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*DeletePlayerBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the delete player binary record v1 operation typically these are written to a http.Request
*/
type DeletePlayerBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) WithTimeout(timeout time.Duration) *DeletePlayerBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) WithContext(ctx context.Context) *DeletePlayerBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) WithHTTPClient(client *http.Client) *DeletePlayerBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeletePlayerBinaryRecordV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKey adds the key to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) WithKey(key string) *DeletePlayerBinaryRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) WithNamespace(namespace string) *DeletePlayerBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) WithUserID(userID string) *DeletePlayerBinaryRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete player binary record v1 params
func (o *DeletePlayerBinaryRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePlayerBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
