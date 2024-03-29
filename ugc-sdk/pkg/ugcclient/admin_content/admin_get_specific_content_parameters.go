// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewAdminGetSpecificContentParams creates a new AdminGetSpecificContentParams object
// with the default values initialized.
func NewAdminGetSpecificContentParams() *AdminGetSpecificContentParams {
	var ()
	return &AdminGetSpecificContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetSpecificContentParamsWithTimeout creates a new AdminGetSpecificContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetSpecificContentParamsWithTimeout(timeout time.Duration) *AdminGetSpecificContentParams {
	var ()
	return &AdminGetSpecificContentParams{

		timeout: timeout,
	}
}

// NewAdminGetSpecificContentParamsWithContext creates a new AdminGetSpecificContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetSpecificContentParamsWithContext(ctx context.Context) *AdminGetSpecificContentParams {
	var ()
	return &AdminGetSpecificContentParams{

		Context: ctx,
	}
}

// NewAdminGetSpecificContentParamsWithHTTPClient creates a new AdminGetSpecificContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetSpecificContentParamsWithHTTPClient(client *http.Client) *AdminGetSpecificContentParams {
	var ()
	return &AdminGetSpecificContentParams{
		HTTPClient: client,
	}
}

/*AdminGetSpecificContentParams contains all the parameters to send to the API endpoint
for the admin get specific content operation typically these are written to a http.Request
*/
type AdminGetSpecificContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get specific content params
func (o *AdminGetSpecificContentParams) WithTimeout(timeout time.Duration) *AdminGetSpecificContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get specific content params
func (o *AdminGetSpecificContentParams) WithContext(ctx context.Context) *AdminGetSpecificContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get specific content params
func (o *AdminGetSpecificContentParams) WithHTTPClient(client *http.Client) *AdminGetSpecificContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetSpecificContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the admin get specific content params
func (o *AdminGetSpecificContentParams) WithContentID(contentID string) *AdminGetSpecificContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin get specific content params
func (o *AdminGetSpecificContentParams) WithNamespace(namespace string) *AdminGetSpecificContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get specific content params
func (o *AdminGetSpecificContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetSpecificContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
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
