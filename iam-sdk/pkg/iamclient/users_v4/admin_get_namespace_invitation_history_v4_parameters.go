// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminGetNamespaceInvitationHistoryV4Params creates a new AdminGetNamespaceInvitationHistoryV4Params object
// with the default values initialized.
func NewAdminGetNamespaceInvitationHistoryV4Params() *AdminGetNamespaceInvitationHistoryV4Params {
	var ()
	return &AdminGetNamespaceInvitationHistoryV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetNamespaceInvitationHistoryV4ParamsWithTimeout creates a new AdminGetNamespaceInvitationHistoryV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetNamespaceInvitationHistoryV4ParamsWithTimeout(timeout time.Duration) *AdminGetNamespaceInvitationHistoryV4Params {
	var ()
	return &AdminGetNamespaceInvitationHistoryV4Params{

		timeout: timeout,
	}
}

// NewAdminGetNamespaceInvitationHistoryV4ParamsWithContext creates a new AdminGetNamespaceInvitationHistoryV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetNamespaceInvitationHistoryV4ParamsWithContext(ctx context.Context) *AdminGetNamespaceInvitationHistoryV4Params {
	var ()
	return &AdminGetNamespaceInvitationHistoryV4Params{

		Context: ctx,
	}
}

// NewAdminGetNamespaceInvitationHistoryV4ParamsWithHTTPClient creates a new AdminGetNamespaceInvitationHistoryV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetNamespaceInvitationHistoryV4ParamsWithHTTPClient(client *http.Client) *AdminGetNamespaceInvitationHistoryV4Params {
	var ()
	return &AdminGetNamespaceInvitationHistoryV4Params{
		HTTPClient: client,
	}
}

/*AdminGetNamespaceInvitationHistoryV4Params contains all the parameters to send to the API endpoint
for the admin get namespace invitation history v4 operation typically these are written to a http.Request
*/
type AdminGetNamespaceInvitationHistoryV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) WithTimeout(timeout time.Duration) *AdminGetNamespaceInvitationHistoryV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) WithContext(ctx context.Context) *AdminGetNamespaceInvitationHistoryV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) WithHTTPClient(client *http.Client) *AdminGetNamespaceInvitationHistoryV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) WithNamespace(namespace string) *AdminGetNamespaceInvitationHistoryV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get namespace invitation history v4 params
func (o *AdminGetNamespaceInvitationHistoryV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetNamespaceInvitationHistoryV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
