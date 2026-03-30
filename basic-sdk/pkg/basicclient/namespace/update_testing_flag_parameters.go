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

// NewUpdateTestingFlagParams creates a new UpdateTestingFlagParams object
// with the default values initialized.
func NewUpdateTestingFlagParams() *UpdateTestingFlagParams {
	var ()
	return &UpdateTestingFlagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateTestingFlagParamsWithTimeout creates a new UpdateTestingFlagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateTestingFlagParamsWithTimeout(timeout time.Duration) *UpdateTestingFlagParams {
	var ()
	return &UpdateTestingFlagParams{

		timeout: timeout,
	}
}

// NewUpdateTestingFlagParamsWithContext creates a new UpdateTestingFlagParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateTestingFlagParamsWithContext(ctx context.Context) *UpdateTestingFlagParams {
	var ()
	return &UpdateTestingFlagParams{

		Context: ctx,
	}
}

// NewUpdateTestingFlagParamsWithHTTPClient creates a new UpdateTestingFlagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateTestingFlagParamsWithHTTPClient(client *http.Client) *UpdateTestingFlagParams {
	var ()
	return &UpdateTestingFlagParams{
		HTTPClient: client,
	}
}

/*UpdateTestingFlagParams contains all the parameters to send to the API endpoint
for the update testing flag operation typically these are written to a http.Request
*/
type UpdateTestingFlagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.NamespaceTestingFlagUpdate
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update testing flag params
func (o *UpdateTestingFlagParams) WithTimeout(timeout time.Duration) *UpdateTestingFlagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update testing flag params
func (o *UpdateTestingFlagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update testing flag params
func (o *UpdateTestingFlagParams) WithContext(ctx context.Context) *UpdateTestingFlagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update testing flag params
func (o *UpdateTestingFlagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update testing flag params
func (o *UpdateTestingFlagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update testing flag params
func (o *UpdateTestingFlagParams) WithHTTPClient(client *http.Client) *UpdateTestingFlagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update testing flag params
func (o *UpdateTestingFlagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update testing flag params
func (o *UpdateTestingFlagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateTestingFlagParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update testing flag params
func (o *UpdateTestingFlagParams) WithBody(body *basicclientmodels.NamespaceTestingFlagUpdate) *UpdateTestingFlagParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update testing flag params
func (o *UpdateTestingFlagParams) SetBody(body *basicclientmodels.NamespaceTestingFlagUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update testing flag params
func (o *UpdateTestingFlagParams) WithNamespace(namespace string) *UpdateTestingFlagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update testing flag params
func (o *UpdateTestingFlagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateTestingFlagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
