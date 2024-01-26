// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tag

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminUpdateTagParams creates a new AdminUpdateTagParams object
// with the default values initialized.
func NewAdminUpdateTagParams() *AdminUpdateTagParams {
	var ()
	return &AdminUpdateTagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateTagParamsWithTimeout creates a new AdminUpdateTagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateTagParamsWithTimeout(timeout time.Duration) *AdminUpdateTagParams {
	var ()
	return &AdminUpdateTagParams{

		timeout: timeout,
	}
}

// NewAdminUpdateTagParamsWithContext creates a new AdminUpdateTagParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateTagParamsWithContext(ctx context.Context) *AdminUpdateTagParams {
	var ()
	return &AdminUpdateTagParams{

		Context: ctx,
	}
}

// NewAdminUpdateTagParamsWithHTTPClient creates a new AdminUpdateTagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateTagParamsWithHTTPClient(client *http.Client) *AdminUpdateTagParams {
	var ()
	return &AdminUpdateTagParams{
		HTTPClient: client,
	}
}

/*AdminUpdateTagParams contains all the parameters to send to the API endpoint
for the admin update tag operation typically these are written to a http.Request
*/
type AdminUpdateTagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateTagRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*TagID
	  tag ID

	*/
	TagID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update tag params
func (o *AdminUpdateTagParams) WithTimeout(timeout time.Duration) *AdminUpdateTagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update tag params
func (o *AdminUpdateTagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update tag params
func (o *AdminUpdateTagParams) WithContext(ctx context.Context) *AdminUpdateTagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update tag params
func (o *AdminUpdateTagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update tag params
func (o *AdminUpdateTagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update tag params
func (o *AdminUpdateTagParams) WithHTTPClient(client *http.Client) *AdminUpdateTagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update tag params
func (o *AdminUpdateTagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update tag params
func (o *AdminUpdateTagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateTagParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update tag params
func (o *AdminUpdateTagParams) WithBody(body *ugcclientmodels.ModelsCreateTagRequest) *AdminUpdateTagParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update tag params
func (o *AdminUpdateTagParams) SetBody(body *ugcclientmodels.ModelsCreateTagRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update tag params
func (o *AdminUpdateTagParams) WithNamespace(namespace string) *AdminUpdateTagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update tag params
func (o *AdminUpdateTagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTagID adds the tagID to the admin update tag params
func (o *AdminUpdateTagParams) WithTagID(tagID string) *AdminUpdateTagParams {
	o.SetTagID(tagID)
	return o
}

// SetTagID adds the tagId to the admin update tag params
func (o *AdminUpdateTagParams) SetTagID(tagID string) {
	o.TagID = tagID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateTagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param tagId
	if err := r.SetPathParam("tagId", o.TagID); err != nil {
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
