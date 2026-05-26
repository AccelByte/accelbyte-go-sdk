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

// NewPublicReplaceSessionStorageLeaderV2Params creates a new PublicReplaceSessionStorageLeaderV2Params object
// with the default values initialized.
func NewPublicReplaceSessionStorageLeaderV2Params() *PublicReplaceSessionStorageLeaderV2Params {
	var ()
	return &PublicReplaceSessionStorageLeaderV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicReplaceSessionStorageLeaderV2ParamsWithTimeout creates a new PublicReplaceSessionStorageLeaderV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicReplaceSessionStorageLeaderV2ParamsWithTimeout(timeout time.Duration) *PublicReplaceSessionStorageLeaderV2Params {
	var ()
	return &PublicReplaceSessionStorageLeaderV2Params{

		timeout: timeout,
	}
}

// NewPublicReplaceSessionStorageLeaderV2ParamsWithContext creates a new PublicReplaceSessionStorageLeaderV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicReplaceSessionStorageLeaderV2ParamsWithContext(ctx context.Context) *PublicReplaceSessionStorageLeaderV2Params {
	var ()
	return &PublicReplaceSessionStorageLeaderV2Params{

		Context: ctx,
	}
}

// NewPublicReplaceSessionStorageLeaderV2ParamsWithHTTPClient creates a new PublicReplaceSessionStorageLeaderV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicReplaceSessionStorageLeaderV2ParamsWithHTTPClient(client *http.Client) *PublicReplaceSessionStorageLeaderV2Params {
	var ()
	return &PublicReplaceSessionStorageLeaderV2Params{
		HTTPClient: client,
	}
}

/*PublicReplaceSessionStorageLeaderV2Params contains all the parameters to send to the API endpoint
for the public replace session storage leader v2 operation typically these are written to a http.Request
*/
type PublicReplaceSessionStorageLeaderV2Params struct {

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

// WithTimeout adds the timeout to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) WithTimeout(timeout time.Duration) *PublicReplaceSessionStorageLeaderV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) WithContext(ctx context.Context) *PublicReplaceSessionStorageLeaderV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) WithHTTPClient(client *http.Client) *PublicReplaceSessionStorageLeaderV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicReplaceSessionStorageLeaderV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) WithBody(body map[string]interface{}) *PublicReplaceSessionStorageLeaderV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) WithNamespace(namespace string) *PublicReplaceSessionStorageLeaderV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) WithSessionID(sessionID string) *PublicReplaceSessionStorageLeaderV2Params {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public replace session storage leader v2 params
func (o *PublicReplaceSessionStorageLeaderV2Params) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicReplaceSessionStorageLeaderV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
