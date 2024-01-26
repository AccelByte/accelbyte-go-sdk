// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewCreateNamespaceParams creates a new CreateNamespaceParams object
// with the default values initialized.
func NewCreateNamespaceParams() *CreateNamespaceParams {
	var ()
	return &CreateNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateNamespaceParamsWithTimeout creates a new CreateNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateNamespaceParamsWithTimeout(timeout time.Duration) *CreateNamespaceParams {
	var ()
	return &CreateNamespaceParams{

		timeout: timeout,
	}
}

// NewCreateNamespaceParamsWithContext creates a new CreateNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateNamespaceParamsWithContext(ctx context.Context) *CreateNamespaceParams {
	var ()
	return &CreateNamespaceParams{

		Context: ctx,
	}
}

// NewCreateNamespaceParamsWithHTTPClient creates a new CreateNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateNamespaceParamsWithHTTPClient(client *http.Client) *CreateNamespaceParams {
	var ()
	return &CreateNamespaceParams{
		HTTPClient: client,
	}
}

/*CreateNamespaceParams contains all the parameters to send to the API endpoint
for the create namespace operation typically these are written to a http.Request
*/
type CreateNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.NamespaceCreate

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create namespace params
func (o *CreateNamespaceParams) WithTimeout(timeout time.Duration) *CreateNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create namespace params
func (o *CreateNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create namespace params
func (o *CreateNamespaceParams) WithContext(ctx context.Context) *CreateNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create namespace params
func (o *CreateNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create namespace params
func (o *CreateNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create namespace params
func (o *CreateNamespaceParams) WithHTTPClient(client *http.Client) *CreateNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create namespace params
func (o *CreateNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create namespace params
func (o *CreateNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create namespace params
func (o *CreateNamespaceParams) WithBody(body *basicclientmodels.NamespaceCreate) *CreateNamespaceParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create namespace params
func (o *CreateNamespaceParams) SetBody(body *basicclientmodels.NamespaceCreate) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreateNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
