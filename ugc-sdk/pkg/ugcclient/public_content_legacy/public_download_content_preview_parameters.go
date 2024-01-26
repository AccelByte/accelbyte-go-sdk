// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// NewPublicDownloadContentPreviewParams creates a new PublicDownloadContentPreviewParams object
// with the default values initialized.
func NewPublicDownloadContentPreviewParams() *PublicDownloadContentPreviewParams {
	var ()
	return &PublicDownloadContentPreviewParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDownloadContentPreviewParamsWithTimeout creates a new PublicDownloadContentPreviewParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDownloadContentPreviewParamsWithTimeout(timeout time.Duration) *PublicDownloadContentPreviewParams {
	var ()
	return &PublicDownloadContentPreviewParams{

		timeout: timeout,
	}
}

// NewPublicDownloadContentPreviewParamsWithContext creates a new PublicDownloadContentPreviewParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDownloadContentPreviewParamsWithContext(ctx context.Context) *PublicDownloadContentPreviewParams {
	var ()
	return &PublicDownloadContentPreviewParams{

		Context: ctx,
	}
}

// NewPublicDownloadContentPreviewParamsWithHTTPClient creates a new PublicDownloadContentPreviewParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDownloadContentPreviewParamsWithHTTPClient(client *http.Client) *PublicDownloadContentPreviewParams {
	var ()
	return &PublicDownloadContentPreviewParams{
		HTTPClient: client,
	}
}

/*PublicDownloadContentPreviewParams contains all the parameters to send to the API endpoint
for the public download content preview operation typically these are written to a http.Request
*/
type PublicDownloadContentPreviewParams struct {

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

// WithTimeout adds the timeout to the public download content preview params
func (o *PublicDownloadContentPreviewParams) WithTimeout(timeout time.Duration) *PublicDownloadContentPreviewParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public download content preview params
func (o *PublicDownloadContentPreviewParams) WithContext(ctx context.Context) *PublicDownloadContentPreviewParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public download content preview params
func (o *PublicDownloadContentPreviewParams) WithHTTPClient(client *http.Client) *PublicDownloadContentPreviewParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDownloadContentPreviewParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the public download content preview params
func (o *PublicDownloadContentPreviewParams) WithContentID(contentID string) *PublicDownloadContentPreviewParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public download content preview params
func (o *PublicDownloadContentPreviewParams) WithNamespace(namespace string) *PublicDownloadContentPreviewParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public download content preview params
func (o *PublicDownloadContentPreviewParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDownloadContentPreviewParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
