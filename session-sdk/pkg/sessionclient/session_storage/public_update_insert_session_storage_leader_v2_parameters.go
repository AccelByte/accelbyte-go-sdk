// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

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

// NewPublicUpdateInsertSessionStorageLeaderV2Params creates a new PublicUpdateInsertSessionStorageLeaderV2Params object
// with the default values initialized.
func NewPublicUpdateInsertSessionStorageLeaderV2Params() *PublicUpdateInsertSessionStorageLeaderV2Params {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateInsertSessionStorageLeaderV2ParamsWithTimeout creates a new PublicUpdateInsertSessionStorageLeaderV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateInsertSessionStorageLeaderV2ParamsWithTimeout(timeout time.Duration) *PublicUpdateInsertSessionStorageLeaderV2Params {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderV2Params{

		timeout: timeout,
	}
}

// NewPublicUpdateInsertSessionStorageLeaderV2ParamsWithContext creates a new PublicUpdateInsertSessionStorageLeaderV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateInsertSessionStorageLeaderV2ParamsWithContext(ctx context.Context) *PublicUpdateInsertSessionStorageLeaderV2Params {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderV2Params{

		Context: ctx,
	}
}

// NewPublicUpdateInsertSessionStorageLeaderV2ParamsWithHTTPClient creates a new PublicUpdateInsertSessionStorageLeaderV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateInsertSessionStorageLeaderV2ParamsWithHTTPClient(client *http.Client) *PublicUpdateInsertSessionStorageLeaderV2Params {
	var ()
	return &PublicUpdateInsertSessionStorageLeaderV2Params{
		HTTPClient: client,
	}
}

/*PublicUpdateInsertSessionStorageLeaderV2Params contains all the parameters to send to the API endpoint
for the public update insert session storage leader v2 operation typically these are written to a http.Request
*/
type PublicUpdateInsertSessionStorageLeaderV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SessionID
	  sessionID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WithTimeout(timeout time.Duration) *PublicUpdateInsertSessionStorageLeaderV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WithContext(ctx context.Context) *PublicUpdateInsertSessionStorageLeaderV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WithHTTPClient(client *http.Client) *PublicUpdateInsertSessionStorageLeaderV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WithBody(body map[string]interface{}) *PublicUpdateInsertSessionStorageLeaderV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WithNamespace(namespace string) *PublicUpdateInsertSessionStorageLeaderV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WithSessionID(sessionID string) *PublicUpdateInsertSessionStorageLeaderV2Params {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public update insert session storage leader v2 params
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateInsertSessionStorageLeaderV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
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
