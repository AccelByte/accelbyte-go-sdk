// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement_with_namespace

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

// NewRetrieveAcceptedAgreements1Params creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized.
func NewRetrieveAcceptedAgreements1Params() *RetrieveAcceptedAgreements1Params {
	var ()
	return &RetrieveAcceptedAgreements1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAcceptedAgreements1ParamsWithTimeout creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAcceptedAgreements1ParamsWithTimeout(timeout time.Duration) *RetrieveAcceptedAgreements1Params {
	var ()
	return &RetrieveAcceptedAgreements1Params{

		timeout: timeout,
	}
}

// NewRetrieveAcceptedAgreements1ParamsWithContext creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAcceptedAgreements1ParamsWithContext(ctx context.Context) *RetrieveAcceptedAgreements1Params {
	var ()
	return &RetrieveAcceptedAgreements1Params{

		Context: ctx,
	}
}

// NewRetrieveAcceptedAgreements1ParamsWithHTTPClient creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAcceptedAgreements1ParamsWithHTTPClient(client *http.Client) *RetrieveAcceptedAgreements1Params {
	var ()
	return &RetrieveAcceptedAgreements1Params{
		HTTPClient: client,
	}
}

/*RetrieveAcceptedAgreements1Params contains all the parameters to send to the API endpoint
for the retrieve accepted agreements 1 operation typically these are written to a http.Request
*/
type RetrieveAcceptedAgreements1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithTimeout(timeout time.Duration) *RetrieveAcceptedAgreements1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithContext(ctx context.Context) *RetrieveAcceptedAgreements1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithHTTPClient(client *http.Client) *RetrieveAcceptedAgreements1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithNamespace(namespace string) *RetrieveAcceptedAgreements1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithUserID(userID string) *RetrieveAcceptedAgreements1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAcceptedAgreements1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
